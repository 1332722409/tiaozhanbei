ит
═Б
8
Const
output"dtype"
valuetensor"
dtypetype

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeѕ
Й
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ѕ
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.3.12v2.3.0-54-gfcc4b966f18ъМ
|
conv0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv0/kernel
u
 conv0/kernel/Read/ReadVariableOpReadVariableOpconv0/kernel*&
_output_shapes
: *
dtype0
l

conv0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
conv0/bias
e
conv0/bias/Read/ReadVariableOpReadVariableOp
conv0/bias*
_output_shapes
: *
dtype0
j
	bn0/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	bn0/gamma
c
bn0/gamma/Read/ReadVariableOpReadVariableOp	bn0/gamma*
_output_shapes
: *
dtype0
h
bn0/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
bn0/beta
a
bn0/beta/Read/ReadVariableOpReadVariableOpbn0/beta*
_output_shapes
: *
dtype0
v
bn0/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_namebn0/moving_mean
o
#bn0/moving_mean/Read/ReadVariableOpReadVariableOpbn0/moving_mean*
_output_shapes
: *
dtype0
~
bn0/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_namebn0/moving_variance
w
'bn0/moving_variance/Read/ReadVariableOpReadVariableOpbn0/moving_variance*
_output_shapes
: *
dtype0
o
	fc/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ1*
shared_name	fc/kernel
h
fc/kernel/Read/ReadVariableOpReadVariableOp	fc/kernel*
_output_shapes
:	ђ1*
dtype0
f
fc/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	fc/bias
_
fc/bias/Read/ReadVariableOpReadVariableOpfc/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
і
Adam/conv0/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/conv0/kernel/m
Ѓ
'Adam/conv0/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv0/kernel/m*&
_output_shapes
: *
dtype0
z
Adam/conv0/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/conv0/bias/m
s
%Adam/conv0/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv0/bias/m*
_output_shapes
: *
dtype0
x
Adam/bn0/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameAdam/bn0/gamma/m
q
$Adam/bn0/gamma/m/Read/ReadVariableOpReadVariableOpAdam/bn0/gamma/m*
_output_shapes
: *
dtype0
v
Adam/bn0/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameAdam/bn0/beta/m
o
#Adam/bn0/beta/m/Read/ReadVariableOpReadVariableOpAdam/bn0/beta/m*
_output_shapes
: *
dtype0
}
Adam/fc/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ1*!
shared_nameAdam/fc/kernel/m
v
$Adam/fc/kernel/m/Read/ReadVariableOpReadVariableOpAdam/fc/kernel/m*
_output_shapes
:	ђ1*
dtype0
t
Adam/fc/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameAdam/fc/bias/m
m
"Adam/fc/bias/m/Read/ReadVariableOpReadVariableOpAdam/fc/bias/m*
_output_shapes
:*
dtype0
і
Adam/conv0/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/conv0/kernel/v
Ѓ
'Adam/conv0/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv0/kernel/v*&
_output_shapes
: *
dtype0
z
Adam/conv0/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/conv0/bias/v
s
%Adam/conv0/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv0/bias/v*
_output_shapes
: *
dtype0
x
Adam/bn0/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameAdam/bn0/gamma/v
q
$Adam/bn0/gamma/v/Read/ReadVariableOpReadVariableOpAdam/bn0/gamma/v*
_output_shapes
: *
dtype0
v
Adam/bn0/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameAdam/bn0/beta/v
o
#Adam/bn0/beta/v/Read/ReadVariableOpReadVariableOpAdam/bn0/beta/v*
_output_shapes
: *
dtype0
}
Adam/fc/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ1*!
shared_nameAdam/fc/kernel/v
v
$Adam/fc/kernel/v/Read/ReadVariableOpReadVariableOpAdam/fc/kernel/v*
_output_shapes
:	ђ1*
dtype0
t
Adam/fc/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameAdam/fc/bias/v
m
"Adam/fc/bias/v/Read/ReadVariableOpReadVariableOpAdam/fc/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
п2
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Њ2
valueЅ2Bє2 B 1
┤
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-2
	layer-8

	optimizer
trainable_variables
	variables
regularization_losses
	keras_api

signatures
 
R
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
Ќ
axis
	gamma
beta
moving_mean
moving_variance
trainable_variables
 	variables
!regularization_losses
"	keras_api
R
#trainable_variables
$	variables
%regularization_losses
&	keras_api
R
'trainable_variables
(	variables
)regularization_losses
*	keras_api
R
+trainable_variables
,	variables
-regularization_losses
.	keras_api
R
/trainable_variables
0	variables
1regularization_losses
2	keras_api
h

3kernel
4bias
5trainable_variables
6	variables
7regularization_losses
8	keras_api
«
9iter

:beta_1

;beta_2
	<decay
=learning_ratemvmwmxmy3mz4m{v|v}v~v3vђ4vЂ
*
0
1
2
3
34
45
8
0
1
2
3
4
5
36
47
 
Г
>layer_regularization_losses
trainable_variables
?layer_metrics
	variables
@non_trainable_variables

Alayers
regularization_losses
Bmetrics
 
 
 
 
Г
Clayer_regularization_losses
trainable_variables
Dlayer_metrics
	variables
Enon_trainable_variables

Flayers
regularization_losses
Gmetrics
XV
VARIABLE_VALUEconv0/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
conv0/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
Г
Hlayer_regularization_losses
trainable_variables
Ilayer_metrics
	variables
Jnon_trainable_variables

Klayers
regularization_losses
Lmetrics
 
TR
VARIABLE_VALUE	bn0/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEbn0/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEbn0/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEbn0/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
2
3
 
Г
Mlayer_regularization_losses
trainable_variables
Nlayer_metrics
 	variables
Onon_trainable_variables

Players
!regularization_losses
Qmetrics
 
 
 
Г
Rlayer_regularization_losses
#trainable_variables
Slayer_metrics
$	variables
Tnon_trainable_variables

Ulayers
%regularization_losses
Vmetrics
 
 
 
Г
Wlayer_regularization_losses
'trainable_variables
Xlayer_metrics
(	variables
Ynon_trainable_variables

Zlayers
)regularization_losses
[metrics
 
 
 
Г
\layer_regularization_losses
+trainable_variables
]layer_metrics
,	variables
^non_trainable_variables

_layers
-regularization_losses
`metrics
 
 
 
Г
alayer_regularization_losses
/trainable_variables
blayer_metrics
0	variables
cnon_trainable_variables

dlayers
1regularization_losses
emetrics
US
VARIABLE_VALUE	fc/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEfc/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

30
41

30
41
 
Г
flayer_regularization_losses
5trainable_variables
glayer_metrics
6	variables
hnon_trainable_variables

ilayers
7regularization_losses
jmetrics
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
 

0
1
?
0
1
2
3
4
5
6
7
	8

k0
l1
 
 
 
 
 
 
 
 
 
 
 
 

0
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	mtotal
	ncount
o	variables
p	keras_api
D
	qtotal
	rcount
s
_fn_kwargs
t	variables
u	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

m0
n1

o	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

q0
r1

t	variables
{y
VARIABLE_VALUEAdam/conv0/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv0/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/bn0/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/bn0/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/fc/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/fc/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv0/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv0/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/bn0/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/bn0/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/fc/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/fc/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ј
serving_default_input_1Placeholder*1
_output_shapes
:         ­­*
dtype0*&
shape:         ­­
Е
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv0/kernel
conv0/bias	bn0/gammabn0/betabn0/moving_meanbn0/moving_variance	fc/kernelfc/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *+
f&R$
"__inference_signature_wrapper_4551
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
б

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename conv0/kernel/Read/ReadVariableOpconv0/bias/Read/ReadVariableOpbn0/gamma/Read/ReadVariableOpbn0/beta/Read/ReadVariableOp#bn0/moving_mean/Read/ReadVariableOp'bn0/moving_variance/Read/ReadVariableOpfc/kernel/Read/ReadVariableOpfc/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp'Adam/conv0/kernel/m/Read/ReadVariableOp%Adam/conv0/bias/m/Read/ReadVariableOp$Adam/bn0/gamma/m/Read/ReadVariableOp#Adam/bn0/beta/m/Read/ReadVariableOp$Adam/fc/kernel/m/Read/ReadVariableOp"Adam/fc/bias/m/Read/ReadVariableOp'Adam/conv0/kernel/v/Read/ReadVariableOp%Adam/conv0/bias/v/Read/ReadVariableOp$Adam/bn0/gamma/v/Read/ReadVariableOp#Adam/bn0/beta/v/Read/ReadVariableOp$Adam/fc/kernel/v/Read/ReadVariableOp"Adam/fc/bias/v/Read/ReadVariableOpConst**
Tin#
!2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *&
f!R
__inference__traced_save_4969
┘
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv0/kernel
conv0/bias	bn0/gammabn0/betabn0/moving_meanbn0/moving_variance	fc/kernelfc/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv0/kernel/mAdam/conv0/bias/mAdam/bn0/gamma/mAdam/bn0/beta/mAdam/fc/kernel/mAdam/fc/bias/mAdam/conv0/kernel/vAdam/conv0/bias/vAdam/bn0/gamma/vAdam/bn0/beta/vAdam/fc/kernel/vAdam/fc/bias/v*)
Tin"
 2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *)
f$R"
 __inference__traced_restore_5066еп
║
E
)__inference_activation_layer_call_fn_4828

inputs
identity╠
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_activation_layer_call_and_return_conditional_losses_43412
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         ЬЬ 2

Identity"
identityIdentity:output:0*0
_input_shapes
:         ЬЬ :Y U
1
_output_shapes
:         ЬЬ 
 
_user_specified_nameinputs
┴?
Ћ
__inference__traced_save_4969
file_prefix+
'savev2_conv0_kernel_read_readvariableop)
%savev2_conv0_bias_read_readvariableop(
$savev2_bn0_gamma_read_readvariableop'
#savev2_bn0_beta_read_readvariableop.
*savev2_bn0_moving_mean_read_readvariableop2
.savev2_bn0_moving_variance_read_readvariableop(
$savev2_fc_kernel_read_readvariableop&
"savev2_fc_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop2
.savev2_adam_conv0_kernel_m_read_readvariableop0
,savev2_adam_conv0_bias_m_read_readvariableop/
+savev2_adam_bn0_gamma_m_read_readvariableop.
*savev2_adam_bn0_beta_m_read_readvariableop/
+savev2_adam_fc_kernel_m_read_readvariableop-
)savev2_adam_fc_bias_m_read_readvariableop2
.savev2_adam_conv0_kernel_v_read_readvariableop0
,savev2_adam_conv0_bias_v_read_readvariableop/
+savev2_adam_bn0_gamma_v_read_readvariableop.
*savev2_adam_bn0_beta_v_read_readvariableop/
+savev2_adam_fc_kernel_v_read_readvariableop-
)savev2_adam_fc_bias_v_read_readvariableop
savev2_const

identity_1ѕбMergeV2CheckpointsЈ
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
ConstЇ
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*<
value3B1 B+_temp_4b4faf60eb494e4299f997ecafcc368f/part2	
Const_1І
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardд
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameЄ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ў
valueЈBїB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names─
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesј
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_conv0_kernel_read_readvariableop%savev2_conv0_bias_read_readvariableop$savev2_bn0_gamma_read_readvariableop#savev2_bn0_beta_read_readvariableop*savev2_bn0_moving_mean_read_readvariableop.savev2_bn0_moving_variance_read_readvariableop$savev2_fc_kernel_read_readvariableop"savev2_fc_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop.savev2_adam_conv0_kernel_m_read_readvariableop,savev2_adam_conv0_bias_m_read_readvariableop+savev2_adam_bn0_gamma_m_read_readvariableop*savev2_adam_bn0_beta_m_read_readvariableop+savev2_adam_fc_kernel_m_read_readvariableop)savev2_adam_fc_bias_m_read_readvariableop.savev2_adam_conv0_kernel_v_read_readvariableop,savev2_adam_conv0_bias_v_read_readvariableop+savev2_adam_bn0_gamma_v_read_readvariableop*savev2_adam_bn0_beta_v_read_readvariableop+savev2_adam_fc_kernel_v_read_readvariableop)savev2_adam_fc_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *,
dtypes"
 2	2
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesА
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*о
_input_shapes─
┴: : : : : : : :	ђ1:: : : : : : : : : : : : : :	ђ1:: : : : :	ђ1:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :%!

_output_shapes
:	ђ1: 

_output_shapes
::	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :%!

_output_shapes
:	ђ1: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :%!

_output_shapes
:	ђ1: 

_output_shapes
::

_output_shapes
: 
Ю
D
(__inference_max_pool0_layer_call_fn_4220

inputs
identityС
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_max_pool0_layer_call_and_return_conditional_losses_42142
PartitionedCallЈ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
┴
р
2__inference_BrainDetectionModel_layer_call_fn_4650

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityѕбStatefulPartitionedCall╔
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_44522
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:         ­­::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ­­
 
_user_specified_nameinputs
Т
║
M__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_4421
input_1

conv0_4397

conv0_4399
bn0_4402
bn0_4404
bn0_4406
bn0_4408
fc_4415
fc_4417
identityѕбbn0/StatefulPartitionedCallбconv0/StatefulPartitionedCallбfc/StatefulPartitionedCall№
zero_padding2d/PartitionedCallPartitionedCallinput_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЗЗ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_zero_padding2d_layer_call_and_return_conditional_losses_40982 
zero_padding2d/PartitionedCallф
conv0/StatefulPartitionedCallStatefulPartitionedCall'zero_padding2d/PartitionedCall:output:0
conv0_4397
conv0_4399*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_conv0_layer_call_and_return_conditional_losses_42472
conv0/StatefulPartitionedCallи
bn0/StatefulPartitionedCallStatefulPartitionedCall&conv0/StatefulPartitionedCall:output:0bn0_4402bn0_4404bn0_4406bn0_4408*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *F
fAR?
=__inference_bn0_layer_call_and_return_conditional_losses_43002
bn0/StatefulPartitionedCallђ
activation/PartitionedCallPartitionedCall$bn0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_activation_layer_call_and_return_conditional_losses_43412
activation/PartitionedCallЩ
max_pool0/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ;; * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_max_pool0_layer_call_and_return_conditional_losses_42142
max_pool0/PartitionedCallщ
max_pool1/PartitionedCallPartitionedCall"max_pool0/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_max_pool1_layer_call_and_return_conditional_losses_42262
max_pool1/PartitionedCallВ
flatten/PartitionedCallPartitionedCall"max_pool1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ1* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_43572
flatten/PartitionedCallі
fc/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0fc_4415fc_4417*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *E
f@R>
<__inference_fc_layer_call_and_return_conditional_losses_43762
fc/StatefulPartitionedCallм
IdentityIdentity#fc/StatefulPartitionedCall:output:0^bn0/StatefulPartitionedCall^conv0/StatefulPartitionedCall^fc/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:         ­­::::::::2:
bn0/StatefulPartitionedCallbn0/StatefulPartitionedCall2>
conv0/StatefulPartitionedCallconv0/StatefulPartitionedCall28
fc/StatefulPartitionedCallfc/StatefulPartitionedCall:Z V
1
_output_shapes
:         ­­
!
_user_specified_name	input_1
с
╣
M__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_4501

inputs

conv0_4477

conv0_4479
bn0_4482
bn0_4484
bn0_4486
bn0_4488
fc_4495
fc_4497
identityѕбbn0/StatefulPartitionedCallбconv0/StatefulPartitionedCallбfc/StatefulPartitionedCallЬ
zero_padding2d/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЗЗ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_zero_padding2d_layer_call_and_return_conditional_losses_40982 
zero_padding2d/PartitionedCallф
conv0/StatefulPartitionedCallStatefulPartitionedCall'zero_padding2d/PartitionedCall:output:0
conv0_4477
conv0_4479*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_conv0_layer_call_and_return_conditional_losses_42472
conv0/StatefulPartitionedCallи
bn0/StatefulPartitionedCallStatefulPartitionedCall&conv0/StatefulPartitionedCall:output:0bn0_4482bn0_4484bn0_4486bn0_4488*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *F
fAR?
=__inference_bn0_layer_call_and_return_conditional_losses_43002
bn0/StatefulPartitionedCallђ
activation/PartitionedCallPartitionedCall$bn0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_activation_layer_call_and_return_conditional_losses_43412
activation/PartitionedCallЩ
max_pool0/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ;; * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_max_pool0_layer_call_and_return_conditional_losses_42142
max_pool0/PartitionedCallщ
max_pool1/PartitionedCallPartitionedCall"max_pool0/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_max_pool1_layer_call_and_return_conditional_losses_42262
max_pool1/PartitionedCallВ
flatten/PartitionedCallPartitionedCall"max_pool1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ1* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_43572
flatten/PartitionedCallі
fc/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0fc_4495fc_4497*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *E
f@R>
<__inference_fc_layer_call_and_return_conditional_losses_43762
fc/StatefulPartitionedCallм
IdentityIdentity#fc/StatefulPartitionedCall:output:0^bn0/StatefulPartitionedCall^conv0/StatefulPartitionedCall^fc/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:         ­­::::::::2:
bn0/StatefulPartitionedCallbn0/StatefulPartitionedCall2>
conv0/StatefulPartitionedCallconv0/StatefulPartitionedCall28
fc/StatefulPartitionedCallfc/StatefulPartitionedCall:Y U
1
_output_shapes
:         ­­
 
_user_specified_nameinputs
р
╣
M__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_4452

inputs

conv0_4428

conv0_4430
bn0_4433
bn0_4435
bn0_4437
bn0_4439
fc_4446
fc_4448
identityѕбbn0/StatefulPartitionedCallбconv0/StatefulPartitionedCallбfc/StatefulPartitionedCallЬ
zero_padding2d/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЗЗ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_zero_padding2d_layer_call_and_return_conditional_losses_40982 
zero_padding2d/PartitionedCallф
conv0/StatefulPartitionedCallStatefulPartitionedCall'zero_padding2d/PartitionedCall:output:0
conv0_4428
conv0_4430*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_conv0_layer_call_and_return_conditional_losses_42472
conv0/StatefulPartitionedCallх
bn0/StatefulPartitionedCallStatefulPartitionedCall&conv0/StatefulPartitionedCall:output:0bn0_4433bn0_4435bn0_4437bn0_4439*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *F
fAR?
=__inference_bn0_layer_call_and_return_conditional_losses_42822
bn0/StatefulPartitionedCallђ
activation/PartitionedCallPartitionedCall$bn0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_activation_layer_call_and_return_conditional_losses_43412
activation/PartitionedCallЩ
max_pool0/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ;; * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_max_pool0_layer_call_and_return_conditional_losses_42142
max_pool0/PartitionedCallщ
max_pool1/PartitionedCallPartitionedCall"max_pool0/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_max_pool1_layer_call_and_return_conditional_losses_42262
max_pool1/PartitionedCallВ
flatten/PartitionedCallPartitionedCall"max_pool1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ1* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_43572
flatten/PartitionedCallі
fc/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0fc_4446fc_4448*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *E
f@R>
<__inference_fc_layer_call_and_return_conditional_losses_43762
fc/StatefulPartitionedCallм
IdentityIdentity#fc/StatefulPartitionedCall:output:0^bn0/StatefulPartitionedCall^conv0/StatefulPartitionedCall^fc/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:         ­­::::::::2:
bn0/StatefulPartitionedCallbn0/StatefulPartitionedCall2>
conv0/StatefulPartitionedCallconv0/StatefulPartitionedCall28
fc/StatefulPartitionedCallfc/StatefulPartitionedCall:Y U
1
_output_shapes
:         ­­
 
_user_specified_nameinputs
Д
I
-__inference_zero_padding2d_layer_call_fn_4104

inputs
identityж
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_zero_padding2d_layer_call_and_return_conditional_losses_40982
PartitionedCallЈ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
├
р
2__inference_BrainDetectionModel_layer_call_fn_4671

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityѕбStatefulPartitionedCall╦
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_45012
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:         ­­::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ­­
 
_user_specified_nameinputs
ъ
B
&__inference_flatten_layer_call_fn_4839

inputs
identity└
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ1* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_43572
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         ђ12

Identity"
identityIdentity:output:0*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
э
Ћ
"__inference_bn0_layer_call_fn_4818

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityѕбStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *F
fAR?
=__inference_bn0_layer_call_and_return_conditional_losses_41972
StatefulPartitionedCallе
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                            ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
ш
џ
=__inference_bn0_layer_call_and_return_conditional_losses_4282

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityѕбAssignNewValueбAssignNewValue_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1┌
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         ЬЬ : : : : :*
epsilon%oЃ:*
exponential_avg_factor%
О#<2
FusedBatchNormV3 
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЇ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1ќ
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1*
T0*1
_output_shapes
:         ЬЬ 2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:         ЬЬ ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_1:Y U
1
_output_shapes
:         ЬЬ 
 
_user_specified_nameinputs
┌
`
D__inference_activation_layer_call_and_return_conditional_losses_4823

inputs
identityX
ReluReluinputs*
T0*1
_output_shapes
:         ЬЬ 2
Relup
IdentityIdentityRelu:activations:0*
T0*1
_output_shapes
:         ЬЬ 2

Identity"
identityIdentity:output:0*0
_input_shapes
:         ЬЬ :Y U
1
_output_shapes
:         ЬЬ 
 
_user_specified_nameinputs
д
ц
<__inference_fc_layer_call_and_return_conditional_losses_4850

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityѕј
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђ1*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         2	
Sigmoid_
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*/
_input_shapes
:         ђ1:::P L
(
_output_shapes
:         ђ1
 
_user_specified_nameinputs
и
Ћ
"__inference_bn0_layer_call_fn_4754

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityѕбStatefulPartitionedCallЉ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *F
fAR?
=__inference_bn0_layer_call_and_return_conditional_losses_43002
StatefulPartitionedCallў
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         ЬЬ 2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:         ЬЬ ::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ЬЬ 
 
_user_specified_nameinputs
Кy
Ї
 __inference__traced_restore_5066
file_prefix!
assignvariableop_conv0_kernel!
assignvariableop_1_conv0_bias 
assignvariableop_2_bn0_gamma
assignvariableop_3_bn0_beta&
"assignvariableop_4_bn0_moving_mean*
&assignvariableop_5_bn0_moving_variance 
assignvariableop_6_fc_kernel
assignvariableop_7_fc_bias 
assignvariableop_8_adam_iter"
assignvariableop_9_adam_beta_1#
assignvariableop_10_adam_beta_2"
assignvariableop_11_adam_decay*
&assignvariableop_12_adam_learning_rate
assignvariableop_13_total
assignvariableop_14_count
assignvariableop_15_total_1
assignvariableop_16_count_1+
'assignvariableop_17_adam_conv0_kernel_m)
%assignvariableop_18_adam_conv0_bias_m(
$assignvariableop_19_adam_bn0_gamma_m'
#assignvariableop_20_adam_bn0_beta_m(
$assignvariableop_21_adam_fc_kernel_m&
"assignvariableop_22_adam_fc_bias_m+
'assignvariableop_23_adam_conv0_kernel_v)
%assignvariableop_24_adam_conv0_bias_v(
$assignvariableop_25_adam_bn0_gamma_v'
#assignvariableop_26_adam_bn0_beta_v(
$assignvariableop_27_adam_fc_kernel_v&
"assignvariableop_28_adam_fc_bias_v
identity_30ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_26бAssignVariableOp_27бAssignVariableOp_28бAssignVariableOp_3бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9Ї
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ў
valueЈBїB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names╩
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices┬
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ї
_output_shapesz
x::::::::::::::::::::::::::::::*,
dtypes"
 2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identityю
AssignVariableOpAssignVariableOpassignvariableop_conv0_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1б
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv0_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2А
AssignVariableOp_2AssignVariableOpassignvariableop_2_bn0_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3а
AssignVariableOp_3AssignVariableOpassignvariableop_3_bn0_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Д
AssignVariableOp_4AssignVariableOp"assignvariableop_4_bn0_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Ф
AssignVariableOp_5AssignVariableOp&assignvariableop_5_bn0_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6А
AssignVariableOp_6AssignVariableOpassignvariableop_6_fc_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Ъ
AssignVariableOp_7AssignVariableOpassignvariableop_7_fc_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_8А
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Б
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Д
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11д
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12«
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13А
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14А
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Б
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16Б
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17»
AssignVariableOp_17AssignVariableOp'assignvariableop_17_adam_conv0_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18Г
AssignVariableOp_18AssignVariableOp%assignvariableop_18_adam_conv0_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19г
AssignVariableOp_19AssignVariableOp$assignvariableop_19_adam_bn0_gamma_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20Ф
AssignVariableOp_20AssignVariableOp#assignvariableop_20_adam_bn0_beta_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21г
AssignVariableOp_21AssignVariableOp$assignvariableop_21_adam_fc_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22ф
AssignVariableOp_22AssignVariableOp"assignvariableop_22_adam_fc_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23»
AssignVariableOp_23AssignVariableOp'assignvariableop_23_adam_conv0_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24Г
AssignVariableOp_24AssignVariableOp%assignvariableop_24_adam_conv0_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25г
AssignVariableOp_25AssignVariableOp$assignvariableop_25_adam_bn0_gamma_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26Ф
AssignVariableOp_26AssignVariableOp#assignvariableop_26_adam_bn0_beta_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27г
AssignVariableOp_27AssignVariableOp$assignvariableop_27_adam_fc_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28ф
AssignVariableOp_28AssignVariableOp"assignvariableop_28_adam_fc_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_289
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp▄
Identity_29Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_29¤
Identity_30IdentityIdentity_29:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_30"#
identity_30Identity_30:output:0*Ѕ
_input_shapesx
v: :::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
╣
]
A__inference_flatten_layer_call_and_return_conditional_losses_4834

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"    ђ  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         ђ12	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         ђ12

Identity"
identityIdentity:output:0*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
Ф
Д
?__inference_conv0_layer_call_and_return_conditional_losses_4247

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЬЬ *
paddingVALID*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpі
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЬЬ 2	
BiasAddn
IdentityIdentityBiasAdd:output:0*
T0*1
_output_shapes
:         ЬЬ 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         ЗЗ:::Y U
1
_output_shapes
:         ЗЗ
 
_user_specified_nameinputs
к
Р
2__inference_BrainDetectionModel_layer_call_fn_4520
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityѕбStatefulPartitionedCall╠
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_45012
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:         ­­::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:         ­­
!
_user_specified_name	input_1
д
ц
<__inference_fc_layer_call_and_return_conditional_losses_4376

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityѕј
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђ1*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         2	
Sigmoid_
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*/
_input_shapes
:         ђ1:::P L
(
_output_shapes
:         ђ1
 
_user_specified_nameinputs
Ю
D
(__inference_max_pool1_layer_call_fn_4232

inputs
identityС
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_max_pool1_layer_call_and_return_conditional_losses_42262
PartitionedCallЈ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
щ
_
C__inference_max_pool0_layer_call_and_return_conditional_losses_4214

inputs
identityГ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЄ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
х
џ
=__inference_bn0_layer_call_and_return_conditional_losses_4774

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityѕбAssignNewValueбAssignNewValue_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oЃ:*
exponential_avg_factor%
О#<2
FusedBatchNormV3 
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЇ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1д
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                            ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
─
Ш
=__inference_bn0_layer_call_and_return_conditional_losses_4300

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityѕt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╠
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         ЬЬ : : : : :*
epsilon%oЃ:*
is_training( 2
FusedBatchNormV3r
IdentityIdentityFusedBatchNormV3:y:0*
T0*1
_output_shapes
:         ЬЬ 2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:         ЬЬ :::::Y U
1
_output_shapes
:         ЬЬ 
 
_user_specified_nameinputs
х
Ћ
"__inference_bn0_layer_call_fn_4741

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityѕбStatefulPartitionedCallЈ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *F
fAR?
=__inference_bn0_layer_call_and_return_conditional_losses_42822
StatefulPartitionedCallў
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         ЬЬ 2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:         ЬЬ ::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ЬЬ 
 
_user_specified_nameinputs
─
Р
2__inference_BrainDetectionModel_layer_call_fn_4471
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityѕбStatefulPartitionedCall╩
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_44522
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:         ­­::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:         ­­
!
_user_specified_name	input_1
ш
Ћ
"__inference_bn0_layer_call_fn_4805

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityѕбStatefulPartitionedCallЪ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *F
fAR?
=__inference_bn0_layer_call_and_return_conditional_losses_41662
StatefulPartitionedCallе
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                            ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
Ф
Д
?__inference_conv0_layer_call_and_return_conditional_losses_4681

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЬЬ *
paddingVALID*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpі
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЬЬ 2	
BiasAddn
IdentityIdentityBiasAdd:output:0*
T0*1
_output_shapes
:         ЬЬ 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         ЗЗ:::Y U
1
_output_shapes
:         ЗЗ
 
_user_specified_nameinputs
Х-
Г
__inference__wrapped_model_4091
input_1<
8braindetectionmodel_conv0_conv2d_readvariableop_resource=
9braindetectionmodel_conv0_biasadd_readvariableop_resource3
/braindetectionmodel_bn0_readvariableop_resource5
1braindetectionmodel_bn0_readvariableop_1_resourceD
@braindetectionmodel_bn0_fusedbatchnormv3_readvariableop_resourceF
Bbraindetectionmodel_bn0_fusedbatchnormv3_readvariableop_1_resource9
5braindetectionmodel_fc_matmul_readvariableop_resource:
6braindetectionmodel_fc_biasadd_readvariableop_resource
identityѕМ
/BrainDetectionModel/zero_padding2d/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             21
/BrainDetectionModel/zero_padding2d/Pad/paddingsо
&BrainDetectionModel/zero_padding2d/PadPadinput_18BrainDetectionModel/zero_padding2d/Pad/paddings:output:0*
T0*1
_output_shapes
:         ЗЗ2(
&BrainDetectionModel/zero_padding2d/Padс
/BrainDetectionModel/conv0/Conv2D/ReadVariableOpReadVariableOp8braindetectionmodel_conv0_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype021
/BrainDetectionModel/conv0/Conv2D/ReadVariableOpЮ
 BrainDetectionModel/conv0/Conv2DConv2D/BrainDetectionModel/zero_padding2d/Pad:output:07BrainDetectionModel/conv0/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЬЬ *
paddingVALID*
strides
2"
 BrainDetectionModel/conv0/Conv2D┌
0BrainDetectionModel/conv0/BiasAdd/ReadVariableOpReadVariableOp9braindetectionmodel_conv0_biasadd_readvariableop_resource*
_output_shapes
: *
dtype022
0BrainDetectionModel/conv0/BiasAdd/ReadVariableOpЫ
!BrainDetectionModel/conv0/BiasAddBiasAdd)BrainDetectionModel/conv0/Conv2D:output:08BrainDetectionModel/conv0/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЬЬ 2#
!BrainDetectionModel/conv0/BiasAdd╝
&BrainDetectionModel/bn0/ReadVariableOpReadVariableOp/braindetectionmodel_bn0_readvariableop_resource*
_output_shapes
: *
dtype02(
&BrainDetectionModel/bn0/ReadVariableOp┬
(BrainDetectionModel/bn0/ReadVariableOp_1ReadVariableOp1braindetectionmodel_bn0_readvariableop_1_resource*
_output_shapes
: *
dtype02*
(BrainDetectionModel/bn0/ReadVariableOp_1№
7BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOpReadVariableOp@braindetectionmodel_bn0_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype029
7BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOpш
9BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbraindetectionmodel_bn0_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02;
9BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp_1ђ
(BrainDetectionModel/bn0/FusedBatchNormV3FusedBatchNormV3*BrainDetectionModel/conv0/BiasAdd:output:0.BrainDetectionModel/bn0/ReadVariableOp:value:00BrainDetectionModel/bn0/ReadVariableOp_1:value:0?BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp:value:0ABrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         ЬЬ : : : : :*
epsilon%oЃ:*
is_training( 2*
(BrainDetectionModel/bn0/FusedBatchNormV3╝
#BrainDetectionModel/activation/ReluRelu,BrainDetectionModel/bn0/FusedBatchNormV3:y:0*
T0*1
_output_shapes
:         ЬЬ 2%
#BrainDetectionModel/activation/Reluщ
%BrainDetectionModel/max_pool0/MaxPoolMaxPool1BrainDetectionModel/activation/Relu:activations:0*/
_output_shapes
:         ;; *
ksize
*
paddingVALID*
strides
2'
%BrainDetectionModel/max_pool0/MaxPoolШ
%BrainDetectionModel/max_pool1/MaxPoolMaxPool.BrainDetectionModel/max_pool0/MaxPool:output:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
2'
%BrainDetectionModel/max_pool1/MaxPoolЌ
!BrainDetectionModel/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"    ђ  2#
!BrainDetectionModel/flatten/ConstС
#BrainDetectionModel/flatten/ReshapeReshape.BrainDetectionModel/max_pool1/MaxPool:output:0*BrainDetectionModel/flatten/Const:output:0*
T0*(
_output_shapes
:         ђ12%
#BrainDetectionModel/flatten/ReshapeМ
,BrainDetectionModel/fc/MatMul/ReadVariableOpReadVariableOp5braindetectionmodel_fc_matmul_readvariableop_resource*
_output_shapes
:	ђ1*
dtype02.
,BrainDetectionModel/fc/MatMul/ReadVariableOpя
BrainDetectionModel/fc/MatMulMatMul,BrainDetectionModel/flatten/Reshape:output:04BrainDetectionModel/fc/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
BrainDetectionModel/fc/MatMulЛ
-BrainDetectionModel/fc/BiasAdd/ReadVariableOpReadVariableOp6braindetectionmodel_fc_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-BrainDetectionModel/fc/BiasAdd/ReadVariableOpП
BrainDetectionModel/fc/BiasAddBiasAdd'BrainDetectionModel/fc/MatMul:product:05BrainDetectionModel/fc/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2 
BrainDetectionModel/fc/BiasAddд
BrainDetectionModel/fc/SigmoidSigmoid'BrainDetectionModel/fc/BiasAdd:output:0*
T0*'
_output_shapes
:         2 
BrainDetectionModel/fc/Sigmoidv
IdentityIdentity"BrainDetectionModel/fc/Sigmoid:y:0*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:         ­­:::::::::Z V
1
_output_shapes
:         ­­
!
_user_specified_name	input_1
│!
║
M__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_4629

inputs(
$conv0_conv2d_readvariableop_resource)
%conv0_biasadd_readvariableop_resource
bn0_readvariableop_resource!
bn0_readvariableop_1_resource0
,bn0_fusedbatchnormv3_readvariableop_resource2
.bn0_fusedbatchnormv3_readvariableop_1_resource%
!fc_matmul_readvariableop_resource&
"fc_biasadd_readvariableop_resource
identityѕФ
zero_padding2d/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             2
zero_padding2d/Pad/paddingsЎ
zero_padding2d/PadPadinputs$zero_padding2d/Pad/paddings:output:0*
T0*1
_output_shapes
:         ЗЗ2
zero_padding2d/PadД
conv0/Conv2D/ReadVariableOpReadVariableOp$conv0_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
conv0/Conv2D/ReadVariableOp═
conv0/Conv2DConv2Dzero_padding2d/Pad:output:0#conv0/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЬЬ *
paddingVALID*
strides
2
conv0/Conv2Dъ
conv0/BiasAdd/ReadVariableOpReadVariableOp%conv0_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
conv0/BiasAdd/ReadVariableOpб
conv0/BiasAddBiasAddconv0/Conv2D:output:0$conv0/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЬЬ 2
conv0/BiasAddђ
bn0/ReadVariableOpReadVariableOpbn0_readvariableop_resource*
_output_shapes
: *
dtype02
bn0/ReadVariableOpє
bn0/ReadVariableOp_1ReadVariableOpbn0_readvariableop_1_resource*
_output_shapes
: *
dtype02
bn0/ReadVariableOp_1│
#bn0/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn0_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02%
#bn0/FusedBatchNormV3/ReadVariableOp╣
%bn0/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn0_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02'
%bn0/FusedBatchNormV3/ReadVariableOp_1З
bn0/FusedBatchNormV3FusedBatchNormV3conv0/BiasAdd:output:0bn0/ReadVariableOp:value:0bn0/ReadVariableOp_1:value:0+bn0/FusedBatchNormV3/ReadVariableOp:value:0-bn0/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         ЬЬ : : : : :*
epsilon%oЃ:*
is_training( 2
bn0/FusedBatchNormV3ђ
activation/ReluRelubn0/FusedBatchNormV3:y:0*
T0*1
_output_shapes
:         ЬЬ 2
activation/Reluй
max_pool0/MaxPoolMaxPoolactivation/Relu:activations:0*/
_output_shapes
:         ;; *
ksize
*
paddingVALID*
strides
2
max_pool0/MaxPool║
max_pool1/MaxPoolMaxPoolmax_pool0/MaxPool:output:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
2
max_pool1/MaxPoolo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"    ђ  2
flatten/Constћ
flatten/ReshapeReshapemax_pool1/MaxPool:output:0flatten/Const:output:0*
T0*(
_output_shapes
:         ђ12
flatten/ReshapeЌ
fc/MatMul/ReadVariableOpReadVariableOp!fc_matmul_readvariableop_resource*
_output_shapes
:	ђ1*
dtype02
fc/MatMul/ReadVariableOpј
	fc/MatMulMatMulflatten/Reshape:output:0 fc/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
	fc/MatMulЋ
fc/BiasAdd/ReadVariableOpReadVariableOp"fc_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
fc/BiasAdd/ReadVariableOpЇ

fc/BiasAddBiasAddfc/MatMul:product:0!fc/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2

fc/BiasAddj

fc/SigmoidSigmoidfc/BiasAdd:output:0*
T0*'
_output_shapes
:         2

fc/Sigmoidb
IdentityIdentityfc/Sigmoid:y:0*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:         ­­:::::::::Y U
1
_output_shapes
:         ­­
 
_user_specified_nameinputs
┌
`
D__inference_activation_layer_call_and_return_conditional_losses_4341

inputs
identityX
ReluReluinputs*
T0*1
_output_shapes
:         ЬЬ 2
Relup
IdentityIdentityRelu:activations:0*
T0*1
_output_shapes
:         ЬЬ 2

Identity"
identityIdentity:output:0*0
_input_shapes
:         ЬЬ :Y U
1
_output_shapes
:         ЬЬ 
 
_user_specified_nameinputs
ш
џ
=__inference_bn0_layer_call_and_return_conditional_losses_4710

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityѕбAssignNewValueбAssignNewValue_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1┌
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         ЬЬ : : : : :*
epsilon%oЃ:*
exponential_avg_factor%
О#<2
FusedBatchNormV3 
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЇ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1ќ
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1*
T0*1
_output_shapes
:         ЬЬ 2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:         ЬЬ ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_1:Y U
1
_output_shapes
:         ЬЬ 
 
_user_specified_nameinputs
─
Ш
=__inference_bn0_layer_call_and_return_conditional_losses_4728

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityѕt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╠
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         ЬЬ : : : : :*
epsilon%oЃ:*
is_training( 2
FusedBatchNormV3r
IdentityIdentityFusedBatchNormV3:y:0*
T0*1
_output_shapes
:         ЬЬ 2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:         ЬЬ :::::Y U
1
_output_shapes
:         ЬЬ 
 
_user_specified_nameinputs
ѕ
м
"__inference_signature_wrapper_4551
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identityѕбStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *(
f#R!
__inference__wrapped_model_40912
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:         ­­::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:         ­­
!
_user_specified_name	input_1
╣
]
A__inference_flatten_layer_call_and_return_conditional_losses_4357

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"    ђ  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         ђ12	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         ђ12

Identity"
identityIdentity:output:0*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
х
џ
=__inference_bn0_layer_call_and_return_conditional_losses_4166

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityѕбAssignNewValueбAssignNewValue_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oЃ:*
exponential_avg_factor%
О#<2
FusedBatchNormV3 
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЇ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1д
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                            ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
┤'
Т
M__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_4591

inputs(
$conv0_conv2d_readvariableop_resource)
%conv0_biasadd_readvariableop_resource
bn0_readvariableop_resource!
bn0_readvariableop_1_resource0
,bn0_fusedbatchnormv3_readvariableop_resource2
.bn0_fusedbatchnormv3_readvariableop_1_resource%
!fc_matmul_readvariableop_resource&
"fc_biasadd_readvariableop_resource
identityѕбbn0/AssignNewValueбbn0/AssignNewValue_1Ф
zero_padding2d/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             2
zero_padding2d/Pad/paddingsЎ
zero_padding2d/PadPadinputs$zero_padding2d/Pad/paddings:output:0*
T0*1
_output_shapes
:         ЗЗ2
zero_padding2d/PadД
conv0/Conv2D/ReadVariableOpReadVariableOp$conv0_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
conv0/Conv2D/ReadVariableOp═
conv0/Conv2DConv2Dzero_padding2d/Pad:output:0#conv0/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЬЬ *
paddingVALID*
strides
2
conv0/Conv2Dъ
conv0/BiasAdd/ReadVariableOpReadVariableOp%conv0_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
conv0/BiasAdd/ReadVariableOpб
conv0/BiasAddBiasAddconv0/Conv2D:output:0$conv0/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЬЬ 2
conv0/BiasAddђ
bn0/ReadVariableOpReadVariableOpbn0_readvariableop_resource*
_output_shapes
: *
dtype02
bn0/ReadVariableOpє
bn0/ReadVariableOp_1ReadVariableOpbn0_readvariableop_1_resource*
_output_shapes
: *
dtype02
bn0/ReadVariableOp_1│
#bn0/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn0_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02%
#bn0/FusedBatchNormV3/ReadVariableOp╣
%bn0/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn0_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02'
%bn0/FusedBatchNormV3/ReadVariableOp_1ѓ
bn0/FusedBatchNormV3FusedBatchNormV3conv0/BiasAdd:output:0bn0/ReadVariableOp:value:0bn0/ReadVariableOp_1:value:0+bn0/FusedBatchNormV3/ReadVariableOp:value:0-bn0/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         ЬЬ : : : : :*
epsilon%oЃ:*
exponential_avg_factor%
О#<2
bn0/FusedBatchNormV3Ќ
bn0/AssignNewValueAssignVariableOp,bn0_fusedbatchnormv3_readvariableop_resource!bn0/FusedBatchNormV3:batch_mean:0$^bn0/FusedBatchNormV3/ReadVariableOp*?
_class5
31loc:@bn0/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
bn0/AssignNewValueЦ
bn0/AssignNewValue_1AssignVariableOp.bn0_fusedbatchnormv3_readvariableop_1_resource%bn0/FusedBatchNormV3:batch_variance:0&^bn0/FusedBatchNormV3/ReadVariableOp_1*A
_class7
53loc:@bn0/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
bn0/AssignNewValue_1ђ
activation/ReluRelubn0/FusedBatchNormV3:y:0*
T0*1
_output_shapes
:         ЬЬ 2
activation/Reluй
max_pool0/MaxPoolMaxPoolactivation/Relu:activations:0*/
_output_shapes
:         ;; *
ksize
*
paddingVALID*
strides
2
max_pool0/MaxPool║
max_pool1/MaxPoolMaxPoolmax_pool0/MaxPool:output:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
2
max_pool1/MaxPoolo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"    ђ  2
flatten/Constћ
flatten/ReshapeReshapemax_pool1/MaxPool:output:0flatten/Const:output:0*
T0*(
_output_shapes
:         ђ12
flatten/ReshapeЌ
fc/MatMul/ReadVariableOpReadVariableOp!fc_matmul_readvariableop_resource*
_output_shapes
:	ђ1*
dtype02
fc/MatMul/ReadVariableOpј
	fc/MatMulMatMulflatten/Reshape:output:0 fc/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
	fc/MatMulЋ
fc/BiasAdd/ReadVariableOpReadVariableOp"fc_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
fc/BiasAdd/ReadVariableOpЇ

fc/BiasAddBiasAddfc/MatMul:product:0!fc/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2

fc/BiasAddj

fc/SigmoidSigmoidfc/BiasAdd:output:0*
T0*'
_output_shapes
:         2

fc/Sigmoidј
IdentityIdentityfc/Sigmoid:y:0^bn0/AssignNewValue^bn0/AssignNewValue_1*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:         ­­::::::::2(
bn0/AssignNewValuebn0/AssignNewValue2,
bn0/AssignNewValue_1bn0/AssignNewValue_1:Y U
1
_output_shapes
:         ­­
 
_user_specified_nameinputs
╬
v
!__inference_fc_layer_call_fn_4859

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *E
f@R>
<__inference_fc_layer_call_and_return_conditional_losses_43762
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*/
_input_shapes
:         ђ1::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ђ1
 
_user_specified_nameinputs
Щ
y
$__inference_conv0_layer_call_fn_4690

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_conv0_layer_call_and_return_conditional_losses_42472
StatefulPartitionedCallў
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         ЬЬ 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         ЗЗ::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ЗЗ
 
_user_specified_nameinputs
С
║
M__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_4393
input_1

conv0_4258

conv0_4260
bn0_4327
bn0_4329
bn0_4331
bn0_4333
fc_4387
fc_4389
identityѕбbn0/StatefulPartitionedCallбconv0/StatefulPartitionedCallбfc/StatefulPartitionedCall№
zero_padding2d/PartitionedCallPartitionedCallinput_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЗЗ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_zero_padding2d_layer_call_and_return_conditional_losses_40982 
zero_padding2d/PartitionedCallф
conv0/StatefulPartitionedCallStatefulPartitionedCall'zero_padding2d/PartitionedCall:output:0
conv0_4258
conv0_4260*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_conv0_layer_call_and_return_conditional_losses_42472
conv0/StatefulPartitionedCallх
bn0/StatefulPartitionedCallStatefulPartitionedCall&conv0/StatefulPartitionedCall:output:0bn0_4327bn0_4329bn0_4331bn0_4333*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *F
fAR?
=__inference_bn0_layer_call_and_return_conditional_losses_42822
bn0/StatefulPartitionedCallђ
activation/PartitionedCallPartitionedCall$bn0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_activation_layer_call_and_return_conditional_losses_43412
activation/PartitionedCallЩ
max_pool0/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ;; * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_max_pool0_layer_call_and_return_conditional_losses_42142
max_pool0/PartitionedCallщ
max_pool1/PartitionedCallPartitionedCall"max_pool0/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_max_pool1_layer_call_and_return_conditional_losses_42262
max_pool1/PartitionedCallВ
flatten/PartitionedCallPartitionedCall"max_pool1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ1* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_43572
flatten/PartitionedCallі
fc/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0fc_4387fc_4389*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *E
f@R>
<__inference_fc_layer_call_and_return_conditional_losses_43762
fc/StatefulPartitionedCallм
IdentityIdentity#fc/StatefulPartitionedCall:output:0^bn0/StatefulPartitionedCall^conv0/StatefulPartitionedCall^fc/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:         ­­::::::::2:
bn0/StatefulPartitionedCallbn0/StatefulPartitionedCall2>
conv0/StatefulPartitionedCallconv0/StatefulPartitionedCall28
fc/StatefulPartitionedCallfc/StatefulPartitionedCall:Z V
1
_output_shapes
:         ­­
!
_user_specified_name	input_1
Ё
Ш
=__inference_bn0_layer_call_and_return_conditional_losses_4792

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityѕt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oЃ:*
is_training( 2
FusedBatchNormV3ѓ
IdentityIdentityFusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                            :::::i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
Р
d
H__inference_zero_padding2d_layer_call_and_return_conditional_losses_4098

inputs
identityЇ
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             2
Pad/paddingsЁ
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4                                    2
PadЃ
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
щ
_
C__inference_max_pool1_layer_call_and_return_conditional_losses_4226

inputs
identityГ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЄ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ё
Ш
=__inference_bn0_layer_call_and_return_conditional_losses_4197

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityѕt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oЃ:*
is_training( 2
FusedBatchNormV3ѓ
IdentityIdentityFusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                            :::::i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs"ИL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*»
serving_defaultЏ
E
input_1:
serving_default_input_1:0         ­­6
fc0
StatefulPartitionedCall:0         tensorflow/serving/predict:Яі
ЦA
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-2
	layer-8

	optimizer
trainable_variables
	variables
regularization_losses
	keras_api

signatures
ѓ__call__
Ѓ_default_save_signature
+ё&call_and_return_all_conditional_losses"ћ>
_tf_keras_networkЭ={"class_name": "Functional", "name": "BrainDetectionModel", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "BrainDetectionModel", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 240, 240, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "ZeroPadding2D", "config": {"name": "zero_padding2d", "trainable": true, "dtype": "float32", "padding": {"class_name": "__tuple__", "items": [{"class_name": "__tuple__", "items": [2, 2]}, {"class_name": "__tuple__", "items": [2, 2]}]}, "data_format": "channels_last"}, "name": "zero_padding2d", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv0", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [7, 7]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv0", "inbound_nodes": [[["zero_padding2d", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "bn0", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "bn0", "inbound_nodes": [[["conv0", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation", "inbound_nodes": [[["bn0", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pool0", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [4, 4]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [4, 4]}, "data_format": "channels_last"}, "name": "max_pool0", "inbound_nodes": [[["activation", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pool1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [4, 4]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [4, 4]}, "data_format": "channels_last"}, "name": "max_pool1", "inbound_nodes": [[["max_pool0", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten", "inbound_nodes": [[["max_pool1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "fc", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc", "inbound_nodes": [[["flatten", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["fc", 0, 0]]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 240, 240, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "BrainDetectionModel", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 240, 240, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "ZeroPadding2D", "config": {"name": "zero_padding2d", "trainable": true, "dtype": "float32", "padding": {"class_name": "__tuple__", "items": [{"class_name": "__tuple__", "items": [2, 2]}, {"class_name": "__tuple__", "items": [2, 2]}]}, "data_format": "channels_last"}, "name": "zero_padding2d", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv0", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [7, 7]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv0", "inbound_nodes": [[["zero_padding2d", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "bn0", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "bn0", "inbound_nodes": [[["conv0", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation", "inbound_nodes": [[["bn0", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pool0", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [4, 4]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [4, 4]}, "data_format": "channels_last"}, "name": "max_pool0", "inbound_nodes": [[["activation", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pool1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [4, 4]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [4, 4]}, "data_format": "channels_last"}, "name": "max_pool1", "inbound_nodes": [[["max_pool0", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten", "inbound_nodes": [[["max_pool1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "fc", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "fc", "inbound_nodes": [[["flatten", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["fc", 0, 0]]}}, "training_config": {"loss": "binary_crossentropy", "metrics": ["accuracy"], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
§"Щ
_tf_keras_input_layer┌{"class_name": "InputLayer", "name": "input_1", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 240, 240, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 240, 240, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}}
Є
trainable_variables
	variables
regularization_losses
	keras_api
Ё__call__
+є&call_and_return_all_conditional_losses"Ш
_tf_keras_layer▄{"class_name": "ZeroPadding2D", "name": "zero_padding2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "zero_padding2d", "trainable": true, "dtype": "float32", "padding": {"class_name": "__tuple__", "items": [{"class_name": "__tuple__", "items": [2, 2]}, {"class_name": "__tuple__", "items": [2, 2]}]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
ы	

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
Є__call__
+ѕ&call_and_return_all_conditional_losses"╩
_tf_keras_layer░{"class_name": "Conv2D", "name": "conv0", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv0", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [7, 7]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 244, 244, 3]}}
џ	
axis
	gamma
beta
moving_mean
moving_variance
trainable_variables
 	variables
!regularization_losses
"	keras_api
Ѕ__call__
+і&call_and_return_all_conditional_losses"─
_tf_keras_layerф{"class_name": "BatchNormalization", "name": "bn0", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "bn0", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 238, 238, 32]}}
М
#trainable_variables
$	variables
%regularization_losses
&	keras_api
І__call__
+ї&call_and_return_all_conditional_losses"┬
_tf_keras_layerе{"class_name": "Activation", "name": "activation", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation", "trainable": true, "dtype": "float32", "activation": "relu"}}
ш
'trainable_variables
(	variables
)regularization_losses
*	keras_api
Ї__call__
+ј&call_and_return_all_conditional_losses"С
_tf_keras_layer╩{"class_name": "MaxPooling2D", "name": "max_pool0", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pool0", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [4, 4]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [4, 4]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
ш
+trainable_variables
,	variables
-regularization_losses
.	keras_api
Ј__call__
+љ&call_and_return_all_conditional_losses"С
_tf_keras_layer╩{"class_name": "MaxPooling2D", "name": "max_pool1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pool1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [4, 4]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [4, 4]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
С
/trainable_variables
0	variables
1regularization_losses
2	keras_api
Љ__call__
+њ&call_and_return_all_conditional_losses"М
_tf_keras_layer╣{"class_name": "Flatten", "name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
Ь

3kernel
4bias
5trainable_variables
6	variables
7regularization_losses
8	keras_api
Њ__call__
+ћ&call_and_return_all_conditional_losses"К
_tf_keras_layerГ{"class_name": "Dense", "name": "fc", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "fc", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 6272}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 6272]}}
┴
9iter

:beta_1

;beta_2
	<decay
=learning_ratemvmwmxmy3mz4m{v|v}v~v3vђ4vЂ"
	optimizer
J
0
1
2
3
34
45"
trackable_list_wrapper
X
0
1
2
3
4
5
36
47"
trackable_list_wrapper
 "
trackable_list_wrapper
╬
>layer_regularization_losses
trainable_variables
?layer_metrics
	variables
@non_trainable_variables

Alayers
regularization_losses
Bmetrics
ѓ__call__
Ѓ_default_save_signature
+ё&call_and_return_all_conditional_losses
'ё"call_and_return_conditional_losses"
_generic_user_object
-
Ћserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
Clayer_regularization_losses
trainable_variables
Dlayer_metrics
	variables
Enon_trainable_variables

Flayers
regularization_losses
Gmetrics
Ё__call__
+є&call_and_return_all_conditional_losses
'є"call_and_return_conditional_losses"
_generic_user_object
&:$ 2conv0/kernel
: 2
conv0/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
░
Hlayer_regularization_losses
trainable_variables
Ilayer_metrics
	variables
Jnon_trainable_variables

Klayers
regularization_losses
Lmetrics
Є__call__
+ѕ&call_and_return_all_conditional_losses
'ѕ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
: 2	bn0/gamma
: 2bn0/beta
:  (2bn0/moving_mean
#:!  (2bn0/moving_variance
.
0
1"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
░
Mlayer_regularization_losses
trainable_variables
Nlayer_metrics
 	variables
Onon_trainable_variables

Players
!regularization_losses
Qmetrics
Ѕ__call__
+і&call_and_return_all_conditional_losses
'і"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
Rlayer_regularization_losses
#trainable_variables
Slayer_metrics
$	variables
Tnon_trainable_variables

Ulayers
%regularization_losses
Vmetrics
І__call__
+ї&call_and_return_all_conditional_losses
'ї"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
Wlayer_regularization_losses
'trainable_variables
Xlayer_metrics
(	variables
Ynon_trainable_variables

Zlayers
)regularization_losses
[metrics
Ї__call__
+ј&call_and_return_all_conditional_losses
'ј"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
\layer_regularization_losses
+trainable_variables
]layer_metrics
,	variables
^non_trainable_variables

_layers
-regularization_losses
`metrics
Ј__call__
+љ&call_and_return_all_conditional_losses
'љ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
alayer_regularization_losses
/trainable_variables
blayer_metrics
0	variables
cnon_trainable_variables

dlayers
1regularization_losses
emetrics
Љ__call__
+њ&call_and_return_all_conditional_losses
'њ"call_and_return_conditional_losses"
_generic_user_object
:	ђ12	fc/kernel
:2fc/bias
.
30
41"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
░
flayer_regularization_losses
5trainable_variables
glayer_metrics
6	variables
hnon_trainable_variables

ilayers
7regularization_losses
jmetrics
Њ__call__
+ћ&call_and_return_all_conditional_losses
'ћ"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
.
k0
l1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╗
	mtotal
	ncount
o	variables
p	keras_api"ё
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
Щ
	qtotal
	rcount
s
_fn_kwargs
t	variables
u	keras_api"│
_tf_keras_metricў{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}}
:  (2total
:  (2count
.
m0
n1"
trackable_list_wrapper
-
o	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
q0
r1"
trackable_list_wrapper
-
t	variables"
_generic_user_object
+:) 2Adam/conv0/kernel/m
: 2Adam/conv0/bias/m
: 2Adam/bn0/gamma/m
: 2Adam/bn0/beta/m
!:	ђ12Adam/fc/kernel/m
:2Adam/fc/bias/m
+:) 2Adam/conv0/kernel/v
: 2Adam/conv0/bias/v
: 2Adam/bn0/gamma/v
: 2Adam/bn0/beta/v
!:	ђ12Adam/fc/kernel/v
:2Adam/fc/bias/v
ќ2Њ
2__inference_BrainDetectionModel_layer_call_fn_4671
2__inference_BrainDetectionModel_layer_call_fn_4650
2__inference_BrainDetectionModel_layer_call_fn_4471
2__inference_BrainDetectionModel_layer_call_fn_4520└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
у2С
__inference__wrapped_model_4091└
І▓Є
FullArgSpec
argsџ 
varargsjargs
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *0б-
+і(
input_1         ­­
ѓ2 
M__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_4629
M__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_4591
M__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_4393
M__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_4421└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Ћ2њ
-__inference_zero_padding2d_layer_call_fn_4104Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
░2Г
H__inference_zero_padding2d_layer_call_and_return_conditional_losses_4098Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
╬2╦
$__inference_conv0_layer_call_fn_4690б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ж2Т
?__inference_conv0_layer_call_and_return_conditional_losses_4681б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
╩2К
"__inference_bn0_layer_call_fn_4754
"__inference_bn0_layer_call_fn_4818
"__inference_bn0_layer_call_fn_4741
"__inference_bn0_layer_call_fn_4805┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Х2│
=__inference_bn0_layer_call_and_return_conditional_losses_4728
=__inference_bn0_layer_call_and_return_conditional_losses_4774
=__inference_bn0_layer_call_and_return_conditional_losses_4792
=__inference_bn0_layer_call_and_return_conditional_losses_4710┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
М2л
)__inference_activation_layer_call_fn_4828б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ь2в
D__inference_activation_layer_call_and_return_conditional_losses_4823б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
љ2Ї
(__inference_max_pool0_layer_call_fn_4220Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
Ф2е
C__inference_max_pool0_layer_call_and_return_conditional_losses_4214Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
љ2Ї
(__inference_max_pool1_layer_call_fn_4232Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
Ф2е
C__inference_max_pool1_layer_call_and_return_conditional_losses_4226Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
л2═
&__inference_flatten_layer_call_fn_4839б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
в2У
A__inference_flatten_layer_call_and_return_conditional_losses_4834б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
╦2╚
!__inference_fc_layer_call_fn_4859б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Т2с
<__inference_fc_layer_call_and_return_conditional_losses_4850б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
1B/
"__inference_signature_wrapper_4551input_1к
M__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_4393u34Bб?
8б5
+і(
input_1         ­­
p

 
ф "%б"
і
0         
џ к
M__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_4421u34Bб?
8б5
+і(
input_1         ­­
p 

 
ф "%б"
і
0         
џ ┼
M__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_4591t34Aб>
7б4
*і'
inputs         ­­
p

 
ф "%б"
і
0         
џ ┼
M__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_4629t34Aб>
7б4
*і'
inputs         ­­
p 

 
ф "%б"
і
0         
џ ъ
2__inference_BrainDetectionModel_layer_call_fn_4471h34Bб?
8б5
+і(
input_1         ­­
p

 
ф "і         ъ
2__inference_BrainDetectionModel_layer_call_fn_4520h34Bб?
8б5
+і(
input_1         ­­
p 

 
ф "і         Ю
2__inference_BrainDetectionModel_layer_call_fn_4650g34Aб>
7б4
*і'
inputs         ­­
p

 
ф "і         Ю
2__inference_BrainDetectionModel_layer_call_fn_4671g34Aб>
7б4
*і'
inputs         ­­
p 

 
ф "і         њ
__inference__wrapped_model_4091o34:б7
0б-
+і(
input_1         ­­
ф "'ф$
"
fcі
fc         ┤
D__inference_activation_layer_call_and_return_conditional_losses_4823l9б6
/б,
*і'
inputs         ЬЬ 
ф "/б,
%і"
0         ЬЬ 
џ ї
)__inference_activation_layer_call_fn_4828_9б6
/б,
*і'
inputs         ЬЬ 
ф ""і         ЬЬ и
=__inference_bn0_layer_call_and_return_conditional_losses_4710v=б:
3б0
*і'
inputs         ЬЬ 
p
ф "/б,
%і"
0         ЬЬ 
џ и
=__inference_bn0_layer_call_and_return_conditional_losses_4728v=б:
3б0
*і'
inputs         ЬЬ 
p 
ф "/б,
%і"
0         ЬЬ 
џ п
=__inference_bn0_layer_call_and_return_conditional_losses_4774ќMбJ
Cб@
:і7
inputs+                            
p
ф "?б<
5і2
0+                            
џ п
=__inference_bn0_layer_call_and_return_conditional_losses_4792ќMбJ
Cб@
:і7
inputs+                            
p 
ф "?б<
5і2
0+                            
џ Ј
"__inference_bn0_layer_call_fn_4741i=б:
3б0
*і'
inputs         ЬЬ 
p
ф ""і         ЬЬ Ј
"__inference_bn0_layer_call_fn_4754i=б:
3б0
*і'
inputs         ЬЬ 
p 
ф ""і         ЬЬ ░
"__inference_bn0_layer_call_fn_4805ЅMбJ
Cб@
:і7
inputs+                            
p
ф "2і/+                            ░
"__inference_bn0_layer_call_fn_4818ЅMбJ
Cб@
:і7
inputs+                            
p 
ф "2і/+                            │
?__inference_conv0_layer_call_and_return_conditional_losses_4681p9б6
/б,
*і'
inputs         ЗЗ
ф "/б,
%і"
0         ЬЬ 
џ І
$__inference_conv0_layer_call_fn_4690c9б6
/б,
*і'
inputs         ЗЗ
ф ""і         ЬЬ Ю
<__inference_fc_layer_call_and_return_conditional_losses_4850]340б-
&б#
!і
inputs         ђ1
ф "%б"
і
0         
џ u
!__inference_fc_layer_call_fn_4859P340б-
&б#
!і
inputs         ђ1
ф "і         д
A__inference_flatten_layer_call_and_return_conditional_losses_4834a7б4
-б*
(і%
inputs          
ф "&б#
і
0         ђ1
џ ~
&__inference_flatten_layer_call_fn_4839T7б4
-б*
(і%
inputs          
ф "і         ђ1Т
C__inference_max_pool0_layer_call_and_return_conditional_losses_4214ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ Й
(__inference_max_pool0_layer_call_fn_4220ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    Т
C__inference_max_pool1_layer_call_and_return_conditional_losses_4226ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ Й
(__inference_max_pool1_layer_call_fn_4232ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    а
"__inference_signature_wrapper_4551z34EбB
б 
;ф8
6
input_1+і(
input_1         ­­"'ф$
"
fcі
fc         в
H__inference_zero_padding2d_layer_call_and_return_conditional_losses_4098ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ ├
-__inference_zero_padding2d_layer_call_fn_4104ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    