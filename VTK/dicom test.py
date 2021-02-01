import pydicom
import os
import matplotlib.pyplot as plt
import SimpleITK
import SimpleITK as sitk
from PIL import Image
import numpy
import cv2


# 路径和列表声明
#PathDicom = "D:/data/00030/scans/LGG00030-unknown/resources/DICOM/files"  # 与python文件同一个目录下的文件夹,存储dicom文件
PathDicom = "D:/data/dicom_images/dicom_images/matlab/examples/sample_data/DICOM/digest_article"
SaveRawDicom = "SaveRaw/"     # 与python文件同一个目录下的文件夹,用来存储mhd文件和raw文件
lstFilesDCM = []
 
# 将PathDicom文件夹下的dicom文件地址读取到lstFilesDCM中
for dirName, subdirList, fileList in os.walk(PathDicom):
	for filename in fileList:
		if ".dcm" in filename.lower():  # 判断文件是否为dicom文件
# 			print(filename)
			lstFilesDCM.append(os.path.join(dirName, filename))  # 加入到列表中
 
# 第一步：将第一张图片作为参考图片，并认为所有图片具有相同维度
RefDs = pydicom.read_file(lstFilesDCM[0])  # 读取第一张dicom图片
 
# 第二步：得到dicom图片所组成3D图片的维度
ConstPixelDims = (int(RefDs.Rows), int(RefDs.Columns), len(lstFilesDCM)) # ConstPixelDims是一个元组
 
# 第三步：得到x方向和y方向的Spacing并得到z方向的层厚
ConstPixelSpacing = (float(RefDs.PixelSpacing[0]), float(RefDs.PixelSpacing[1]), float(RefDs.SliceThickness))
 
# 第四步：得到图像的原点
Origin = RefDs.ImagePositionPatient
 
# 根据维度创建一个numpy的三维数组，并将元素类型设为：pixel_array.dtype
# ArrayDicom = numpy.zeros(ConstPixelDims, dtype=RefDs.pixel_array.dtype)  # array is a numpy array
ArrayDicom = numpy.zeros(ConstPixelDims, dtype=numpy.int)
 
# 第五步:遍历所有的dicom文件，读取图像数据，存放在numpy数组中
i = 0
for i, filenameDCM in enumerate(lstFilesDCM):
    ds = sitk.ReadImage(filenameDCM)
# 	ArrayDicom[:, :, lstFilesDCM.index(filenameDCM)] = ds.pixel_array
    image_array = sitk.GetArrayFromImage(ds)
    ArrayDicom[:, :, i] = numpy.asarray(Image.fromarray(image_array[0]))
#     cv2.imwrite("out_" + str(i) + ".png", ArrayDicom[:, :, i])

 
# 第六步：对numpy数组进行转置，即把坐标轴（x,y,z）变换为（z,y,x）,这样是dicom存储文件的格式，即第一个维度为z轴便于图片堆叠
ArrayDicom = numpy.transpose(ArrayDicom, (2, 0, 1))
 
# 第七步：将现在的numpy数组通过SimpleITK转化为mhd和raw文件
sitk_img = SimpleITK.GetImageFromArray(ArrayDicom, isVector=False)
sitk_img.SetSpacing(ConstPixelSpacing)
sitk_img.SetOrigin(Origin)
print(sitk_img)
sitk.WriteImage(sitk_img, os.path.join(SaveRawDicom, "sample" + ".mhd"))

import vtk

def show(fileName):
    colors = vtk.vtkNamedColors()

    # colors.SetColor("SkinColor", [255, 125, 64, 255])
    colors.SetColor("SkinColor", [0, 255, 0, 200])
    colors.SetColor("BkgColor", [51, 77, 102, 255])

    # Create the renderer, the render window, and the interactor. The renderer
    # draws into the render window, the interactor enables mouse- and
    # keyboard-based interaction with the data within the render window.
    #
    aRenderer = vtk.vtkRenderer()
    renWin = vtk.vtkRenderWindow()
    renWin.AddRenderer(aRenderer)

    iren = vtk.vtkRenderWindowInteractor()
    iren.SetRenderWindow(renWin)

    # The following reader is used to read a series of 2D slices (images)
    # that compose the volume. The slice dimensions are set, and the
    # pixel spacing. The data Endianness must also be specified. The reader
    # uses the FilePrefix in combination with the slice number to construct
    # filenames using the format FilePrefix.%d. (In this case the FilePrefix
    # is the root name of the file: quarter.)
    reader = vtk.vtkMetaImageReader()
    reader.SetFileName(fileName)

    # An isosurface, or contour value of 500 is known to correspond to the
    # skin of the patient.
    # The triangle stripper is used to create triangle strips from the
    # isosurface these render much faster on many systems.
    skinExtractor = vtk.vtkMarchingCubes()
    skinExtractor.SetInputConnection(reader.GetOutputPort())
    skinExtractor.SetValue(0, 500)

    skinStripper = vtk.vtkStripper()
    skinStripper.SetInputConnection(skinExtractor.GetOutputPort())

    skinMapper = vtk.vtkPolyDataMapper()
    skinMapper.SetInputConnection(skinStripper.GetOutputPort())
    skinMapper.ScalarVisibilityOff()

    skin = vtk.vtkActor()
    skin.SetMapper(skinMapper)
    skin.GetProperty().SetDiffuseColor(colors.GetColor3d("SkinColor"))
    skin.GetProperty().SetSpecular(.3)
    skin.GetProperty().SetSpecularPower(20)
    skin.GetProperty().SetOpacity(.5)

    # An isosurface, or contour value of 1150 is known to correspond to the
    # bone of the patient.
    # The triangle stripper is used to create triangle strips from the
    # isosurface these render much faster on may systems.
    boneExtractor = vtk.vtkMarchingCubes()
    boneExtractor.SetInputConnection(reader.GetOutputPort())
    boneExtractor.SetValue(0, 1150)

    boneStripper = vtk.vtkStripper()
    boneStripper.SetInputConnection(boneExtractor.GetOutputPort())

    boneMapper = vtk.vtkPolyDataMapper()
    boneMapper.SetInputConnection(boneStripper.GetOutputPort())
    boneMapper.ScalarVisibilityOff()

    bone = vtk.vtkActor()
    bone.SetMapper(boneMapper)
    bone.GetProperty().SetDiffuseColor(colors.GetColor3d("Ivory"))

    # An outline provides context around the data.
    #
    outlineData = vtk.vtkOutlineFilter()
    outlineData.SetInputConnection(reader.GetOutputPort())

    mapOutline = vtk.vtkPolyDataMapper()
    mapOutline.SetInputConnection(outlineData.GetOutputPort())

    outline = vtk.vtkActor()
    outline.SetMapper(mapOutline)
    outline.GetProperty().SetColor(colors.GetColor3d("Black"))

    # It is convenient to create an initial view of the data. The FocalPoint
    # and Position form a vector direction. Later on (ResetCamera() method)
    # this vector is used to position the camera to look at the data in
    # this direction.
    aCamera = vtk.vtkCamera()
    aCamera.SetViewUp(0, 0, -1)
    aCamera.SetPosition(0, -1, 0)
    aCamera.SetFocalPoint(0, 0, 0)
    aCamera.ComputeViewPlaneNormal()
    aCamera.Azimuth(30.0)
    aCamera.Elevation(30.0)

    # Actors are added to the renderer. An initial camera view is created.
    # The Dolly() method moves the camera towards the FocalPoint,
    # thereby enlarging the image.
    aRenderer.AddActor(outline)
    aRenderer.AddActor(skin)
    aRenderer.AddActor(bone)
    aRenderer.SetActiveCamera(aCamera)
    aRenderer.ResetCamera()
    aCamera.Dolly(1.5)

    # Set a background color for the renderer and set the size of the
    # render window (expressed in pixels).
    aRenderer.SetBackground(colors.GetColor3d("BkgColor"))
    renWin.SetSize(640, 480)

    # Note that when camera movement occurs (as it does in the Dolly()
    # method), the clipping planes often need adjusting. Clipping planes
    # consist of two planes: near and far along the view direction. The
    # near plane clips out objects in front of the plane the far plane
    # clips out objects behind the plane. This way only what is drawn
    # between the planes is actually rendered.
    aRenderer.ResetCameraClippingRange()

    # Initialize the event loop and then start it.
    iren.Initialize()
    iren.Start()

show('SaveRaw/sample1.mhd')
