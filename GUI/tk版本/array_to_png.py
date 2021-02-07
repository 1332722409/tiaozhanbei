# -*- coding: utf-8 -*-
# Author:  @ MuLun_Zhu
# reader > programmer > machine
# @Time :  2021/2/4 10:52 下午



from PIL import Image
import numpy as np
import time
start = time.time()

a = np.random.randint(0,255,size=(512,512),)
print(type(a))
img = np.array(a)
print(img)
Image.fromarray((img).astype('uint8'),mode='L').convert('L').save('test.png')

end = time.time()
print(end-start)

"""# img = np.array(Image.open(ori_path))
print(img.shape)
img_goal = np.zeros((img.shape[0]//8, img.shape[1]//8))
pool_h = img.shape[0]//8
pool_w = img.shape[1]//8
for i in range(pool_h):
    for j in range(pool_w):
        img_goal[i,j] = int(Counter((img[8*i:8*(i+1),8*j:8*(j+1)].flatten())).most_common(1)[0][0] )
# print img_goal
misc.toimage(img_goal, cmin=0, cmax=255).save(goal_path)
misc.imsave('a.jpg', a)"""
