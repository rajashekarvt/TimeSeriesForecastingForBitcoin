??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
?
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
_
Pad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.02unknown8??
~
conv1d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv1d_4/kernel
w
#conv1d_4/kernel/Read/ReadVariableOpReadVariableOpconv1d_4/kernel*"
_output_shapes
: *
dtype0
r
conv1d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv1d_4/bias
k
!conv1d_4/bias/Read/ReadVariableOpReadVariableOpconv1d_4/bias*
_output_shapes
: *
dtype0
~
conv1d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 * 
shared_nameconv1d_5/kernel
w
#conv1d_5/kernel/Read/ReadVariableOpReadVariableOpconv1d_5/kernel*"
_output_shapes
:	 *
dtype0
r
conv1d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv1d_5/bias
k
!conv1d_5/bias/Read/ReadVariableOpReadVariableOpconv1d_5/bias*
_output_shapes
: *
dtype0
{
dense_96/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?* 
shared_namedense_96/kernel
t
#dense_96/kernel/Read/ReadVariableOpReadVariableOpdense_96/kernel*
_output_shapes
:	?*
dtype0
s
dense_96/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_96/bias
l
!dense_96/bias/Read/ReadVariableOpReadVariableOpdense_96/bias*
_output_shapes	
:?*
dtype0
{
dense_97/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?* 
shared_namedense_97/kernel
t
#dense_97/kernel/Read/ReadVariableOpReadVariableOpdense_97/kernel*
_output_shapes
:	?*
dtype0
r
dense_97/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_97/bias
k
!dense_97/bias/Read/ReadVariableOpReadVariableOpdense_97/bias*
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
?
Adam/conv1d_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv1d_4/kernel/m
?
*Adam/conv1d_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_4/kernel/m*"
_output_shapes
: *
dtype0
?
Adam/conv1d_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv1d_4/bias/m
y
(Adam/conv1d_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_4/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv1d_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *'
shared_nameAdam/conv1d_5/kernel/m
?
*Adam/conv1d_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_5/kernel/m*"
_output_shapes
:	 *
dtype0
?
Adam/conv1d_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv1d_5/bias/m
y
(Adam/conv1d_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_5/bias/m*
_output_shapes
: *
dtype0
?
Adam/dense_96/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*'
shared_nameAdam/dense_96/kernel/m
?
*Adam/dense_96/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_96/kernel/m*
_output_shapes
:	?*
dtype0
?
Adam/dense_96/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_96/bias/m
z
(Adam/dense_96/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_96/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_97/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*'
shared_nameAdam/dense_97/kernel/m
?
*Adam/dense_97/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_97/kernel/m*
_output_shapes
:	?*
dtype0
?
Adam/dense_97/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_97/bias/m
y
(Adam/dense_97/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_97/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv1d_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv1d_4/kernel/v
?
*Adam/conv1d_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_4/kernel/v*"
_output_shapes
: *
dtype0
?
Adam/conv1d_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv1d_4/bias/v
y
(Adam/conv1d_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_4/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv1d_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *'
shared_nameAdam/conv1d_5/kernel/v
?
*Adam/conv1d_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_5/kernel/v*"
_output_shapes
:	 *
dtype0
?
Adam/conv1d_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv1d_5/bias/v
y
(Adam/conv1d_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_5/bias/v*
_output_shapes
: *
dtype0
?
Adam/dense_96/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*'
shared_nameAdam/dense_96/kernel/v
?
*Adam/dense_96/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_96/kernel/v*
_output_shapes
:	?*
dtype0
?
Adam/dense_96/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_96/bias/v
z
(Adam/dense_96/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_96/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_97/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*'
shared_nameAdam/dense_97/kernel/v
?
*Adam/dense_97/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_97/kernel/v*
_output_shapes
:	?*
dtype0
?
Adam/dense_97/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_97/bias/v
y
(Adam/dense_97/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_97/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?:
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?9
value?9B?9 B?9
?
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer_with_weights-0
layer-6
layer_with_weights-1
layer-7
	layer_with_weights-2
	layer-8

layer-9
layer-10
layer_with_weights-3
layer-11
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
 
 
 
R
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
 bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
h

%kernel
&bias
'	variables
(trainable_variables
)regularization_losses
*	keras_api
h

+kernel
,bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
R
1	variables
2trainable_variables
3regularization_losses
4	keras_api
R
5	variables
6trainable_variables
7regularization_losses
8	keras_api
h

9kernel
:bias
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?
?iter

@beta_1

Abeta_2
	Bdecay
Clearning_ratem? m?%m?&m?+m?,m?9m?:m?v? v?%v?&v?+v?,v?9v?:v?
8
0
 1
%2
&3
+4
,5
96
:7
8
0
 1
%2
&3
+4
,5
96
:7
 
?
	variables
trainable_variables
Dlayer_metrics
regularization_losses
Elayer_regularization_losses
Fnon_trainable_variables

Glayers
Hmetrics
 
 
 
 
?
	variables
trainable_variables
regularization_losses
Inon_trainable_variables
Jlayer_regularization_losses
Klayer_metrics

Llayers
Mmetrics
 
 
 
?
	variables
trainable_variables
regularization_losses
Nnon_trainable_variables
Olayer_regularization_losses
Player_metrics

Qlayers
Rmetrics
 
 
 
?
	variables
trainable_variables
regularization_losses
Snon_trainable_variables
Tlayer_regularization_losses
Ulayer_metrics

Vlayers
Wmetrics
[Y
VARIABLE_VALUEconv1d_4/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv1d_4/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
 1

0
 1
 
?
!	variables
"trainable_variables
#regularization_losses
Xnon_trainable_variables
Ylayer_regularization_losses
Zlayer_metrics

[layers
\metrics
[Y
VARIABLE_VALUEconv1d_5/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv1d_5/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

%0
&1

%0
&1
 
?
'	variables
(trainable_variables
)regularization_losses
]non_trainable_variables
^layer_regularization_losses
_layer_metrics

`layers
ametrics
[Y
VARIABLE_VALUEdense_96/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_96/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

+0
,1

+0
,1
 
?
-	variables
.trainable_variables
/regularization_losses
bnon_trainable_variables
clayer_regularization_losses
dlayer_metrics

elayers
fmetrics
 
 
 
?
1	variables
2trainable_variables
3regularization_losses
gnon_trainable_variables
hlayer_regularization_losses
ilayer_metrics

jlayers
kmetrics
 
 
 
?
5	variables
6trainable_variables
7regularization_losses
lnon_trainable_variables
mlayer_regularization_losses
nlayer_metrics

olayers
pmetrics
[Y
VARIABLE_VALUEdense_97/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_97/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

90
:1

90
:1
 
?
;	variables
<trainable_variables
=regularization_losses
qnon_trainable_variables
rlayer_regularization_losses
slayer_metrics

tlayers
umetrics
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
 
V
0
1
2
3
4
5
6
7
	8

9
10
11

v0
w1
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
	xtotal
	ycount
z	variables
{	keras_api
E
	|total
	}count
~
_fn_kwargs
	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

x0
y1

z	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

|0
}1

	variables
~|
VARIABLE_VALUEAdam/conv1d_4/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv1d_4/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv1d_5/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv1d_5/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_96/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_96/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_97/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_97/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv1d_4/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv1d_4/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv1d_5/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv1d_5/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_96/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_96/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_97/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_97/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
$serving_default_block_rewards_inputsPlaceholder*'
_output_shapes
:?????????	*
dtype0*
shape:?????????	
}
serving_default_days_inputPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
serving_default_window_inputsPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCall$serving_default_block_rewards_inputsserving_default_days_inputserving_default_window_inputsconv1d_4/kernelconv1d_4/biasconv1d_5/kernelconv1d_5/biasdense_96/kerneldense_96/biasdense_97/kerneldense_97/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_3094146
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv1d_4/kernel/Read/ReadVariableOp!conv1d_4/bias/Read/ReadVariableOp#conv1d_5/kernel/Read/ReadVariableOp!conv1d_5/bias/Read/ReadVariableOp#dense_96/kernel/Read/ReadVariableOp!dense_96/bias/Read/ReadVariableOp#dense_97/kernel/Read/ReadVariableOp!dense_97/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/conv1d_4/kernel/m/Read/ReadVariableOp(Adam/conv1d_4/bias/m/Read/ReadVariableOp*Adam/conv1d_5/kernel/m/Read/ReadVariableOp(Adam/conv1d_5/bias/m/Read/ReadVariableOp*Adam/dense_96/kernel/m/Read/ReadVariableOp(Adam/dense_96/bias/m/Read/ReadVariableOp*Adam/dense_97/kernel/m/Read/ReadVariableOp(Adam/dense_97/bias/m/Read/ReadVariableOp*Adam/conv1d_4/kernel/v/Read/ReadVariableOp(Adam/conv1d_4/bias/v/Read/ReadVariableOp*Adam/conv1d_5/kernel/v/Read/ReadVariableOp(Adam/conv1d_5/bias/v/Read/ReadVariableOp*Adam/dense_96/kernel/v/Read/ReadVariableOp(Adam/dense_96/bias/v/Read/ReadVariableOp*Adam/dense_97/kernel/v/Read/ReadVariableOp(Adam/dense_97/bias/v/Read/ReadVariableOpConst*.
Tin'
%2#	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__traced_save_3094763
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1d_4/kernelconv1d_4/biasconv1d_5/kernelconv1d_5/biasdense_96/kerneldense_96/biasdense_97/kerneldense_97/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv1d_4/kernel/mAdam/conv1d_4/bias/mAdam/conv1d_5/kernel/mAdam/conv1d_5/bias/mAdam/dense_96/kernel/mAdam/dense_96/bias/mAdam/dense_97/kernel/mAdam/dense_97/bias/mAdam/conv1d_4/kernel/vAdam/conv1d_4/bias/vAdam/conv1d_5/kernel/vAdam/conv1d_5/bias/vAdam/dense_96/kernel/vAdam/dense_96/bias/vAdam/dense_97/kernel/vAdam/dense_97/bias/v*-
Tin&
$2"*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference__traced_restore_3094872??

?
b
F__inference_lambda_18_layer_call_and_return_conditional_losses_3094441

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim}

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????	2

ExpandDimsk
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????	:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
b
F__inference_lambda_19_layer_call_and_return_conditional_losses_3094463

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim}

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2

ExpandDimsk
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?-
?
J__inference_tribrid_model_layer_call_and_return_conditional_losses_3094007

inputs
inputs_1
inputs_2&
conv1d_4_3093984: 
conv1d_4_3093986: &
conv1d_5_3093989:	 
conv1d_5_3093991: #
dense_96_3093994:	?
dense_96_3093996:	?#
dense_97_3094001:	?
dense_97_3094003:
identity?? conv1d_4/StatefulPartitionedCall? conv1d_5/StatefulPartitionedCall? dense_96/StatefulPartitionedCall? dense_97/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?
lambda_19/PartitionedCallPartitionedCallinputs_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_lambda_19_layer_call_and_return_conditional_losses_30939442
lambda_19/PartitionedCalls
lambda_18/CastCastinputs_1*

DstT0*

SrcT0*'
_output_shapes
:?????????	2
lambda_18/Cast?
lambda_18/PartitionedCallPartitionedCalllambda_18/Cast:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_lambda_18_layer_call_and_return_conditional_losses_30939272
lambda_18/PartitionedCallq
lambda_17/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
lambda_17/Cast?
lambda_17/PartitionedCallPartitionedCalllambda_17/Cast:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_lambda_17_layer_call_and_return_conditional_losses_30939102
lambda_17/PartitionedCall?
 conv1d_4/StatefulPartitionedCallStatefulPartitionedCall"lambda_17/PartitionedCall:output:0conv1d_4_3093984conv1d_4_3093986*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv1d_4_layer_call_and_return_conditional_losses_30936842"
 conv1d_4/StatefulPartitionedCall?
 conv1d_5/StatefulPartitionedCallStatefulPartitionedCall"lambda_18/PartitionedCall:output:0conv1d_5_3093989conv1d_5_3093991*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv1d_5_layer_call_and_return_conditional_losses_30937082"
 conv1d_5/StatefulPartitionedCall?
 dense_96/StatefulPartitionedCallStatefulPartitionedCall"lambda_19/PartitionedCall:output:0dense_96_3093994dense_96_3093996*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_96_layer_call_and_return_conditional_losses_30937462"
 dense_96/StatefulPartitionedCall?
 Combined_outputs/PartitionedCallPartitionedCall)conv1d_4/StatefulPartitionedCall:output:0)conv1d_5/StatefulPartitionedCall:output:0)dense_96/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_Combined_outputs_layer_call_and_return_conditional_losses_30937602"
 Combined_outputs/PartitionedCall?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall)Combined_outputs/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_30938552#
!dropout_1/StatefulPartitionedCall?
 dense_97/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_97_3094001dense_97_3094003*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_97_layer_call_and_return_conditional_losses_30937992"
 dense_97/StatefulPartitionedCall?
IdentityIdentity)dense_97/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp!^conv1d_4/StatefulPartitionedCall!^conv1d_5/StatefulPartitionedCall!^dense_96/StatefulPartitionedCall!^dense_97/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:?????????:?????????	:?????????: : : : : : : : 2D
 conv1d_4/StatefulPartitionedCall conv1d_4/StatefulPartitionedCall2D
 conv1d_5/StatefulPartitionedCall conv1d_5/StatefulPartitionedCall2D
 dense_96/StatefulPartitionedCall dense_96/StatefulPartitionedCall2D
 dense_97/StatefulPartitionedCall dense_97/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????	
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
G
+__inference_lambda_17_layer_call_fn_3094402

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_lambda_17_layer_call_and_return_conditional_losses_30936642
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?+
?
J__inference_tribrid_model_layer_call_and_return_conditional_losses_3093806

inputs
inputs_1
inputs_2&
conv1d_4_3093685: 
conv1d_4_3093687: &
conv1d_5_3093709:	 
conv1d_5_3093711: #
dense_96_3093747:	?
dense_96_3093749:	?#
dense_97_3093800:	?
dense_97_3093802:
identity?? conv1d_4/StatefulPartitionedCall? conv1d_5/StatefulPartitionedCall? dense_96/StatefulPartitionedCall? dense_97/StatefulPartitionedCall?
lambda_19/PartitionedCallPartitionedCallinputs_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_lambda_19_layer_call_and_return_conditional_losses_30936462
lambda_19/PartitionedCalls
lambda_18/CastCastinputs_1*

DstT0*

SrcT0*'
_output_shapes
:?????????	2
lambda_18/Cast?
lambda_18/PartitionedCallPartitionedCalllambda_18/Cast:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_lambda_18_layer_call_and_return_conditional_losses_30936552
lambda_18/PartitionedCallq
lambda_17/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
lambda_17/Cast?
lambda_17/PartitionedCallPartitionedCalllambda_17/Cast:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_lambda_17_layer_call_and_return_conditional_losses_30936642
lambda_17/PartitionedCall?
 conv1d_4/StatefulPartitionedCallStatefulPartitionedCall"lambda_17/PartitionedCall:output:0conv1d_4_3093685conv1d_4_3093687*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv1d_4_layer_call_and_return_conditional_losses_30936842"
 conv1d_4/StatefulPartitionedCall?
 conv1d_5/StatefulPartitionedCallStatefulPartitionedCall"lambda_18/PartitionedCall:output:0conv1d_5_3093709conv1d_5_3093711*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv1d_5_layer_call_and_return_conditional_losses_30937082"
 conv1d_5/StatefulPartitionedCall?
 dense_96/StatefulPartitionedCallStatefulPartitionedCall"lambda_19/PartitionedCall:output:0dense_96_3093747dense_96_3093749*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_96_layer_call_and_return_conditional_losses_30937462"
 dense_96/StatefulPartitionedCall?
 Combined_outputs/PartitionedCallPartitionedCall)conv1d_4/StatefulPartitionedCall:output:0)conv1d_5/StatefulPartitionedCall:output:0)dense_96/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_Combined_outputs_layer_call_and_return_conditional_losses_30937602"
 Combined_outputs/PartitionedCall?
dropout_1/PartitionedCallPartitionedCall)Combined_outputs/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_30937672
dropout_1/PartitionedCall?
 dense_97/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_97_3093800dense_97_3093802*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_97_layer_call_and_return_conditional_losses_30937992"
 dense_97/StatefulPartitionedCall?
IdentityIdentity)dense_97/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp!^conv1d_4/StatefulPartitionedCall!^conv1d_5/StatefulPartitionedCall!^dense_96/StatefulPartitionedCall!^dense_97/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:?????????:?????????	:?????????: : : : : : : : 2D
 conv1d_4/StatefulPartitionedCall conv1d_4/StatefulPartitionedCall2D
 conv1d_5/StatefulPartitionedCall conv1d_5/StatefulPartitionedCall2D
 dense_96/StatefulPartitionedCall dense_96/StatefulPartitionedCall2D
 dense_97/StatefulPartitionedCall dense_97/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????	
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_1_layer_call_and_return_conditional_losses_3093767

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:??????????2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
G
+__inference_lambda_17_layer_call_fn_3094407

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_lambda_17_layer_call_and_return_conditional_losses_30939102
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
b
F__inference_lambda_19_layer_call_and_return_conditional_losses_3093944

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim}

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2

ExpandDimsk
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
? 
?
E__inference_dense_97_layer_call_and_return_conditional_losses_3093799

inputs4
!tensordot_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:??????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2	
BiasAddo
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
/__inference_tribrid_model_layer_call_fn_3094169
inputs_0
inputs_1
inputs_2
unknown: 
	unknown_0: 
	unknown_1:	 
	unknown_2: 
	unknown_3:	?
	unknown_4:	?
	unknown_5:	?
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_tribrid_model_layer_call_and_return_conditional_losses_30938062
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:?????????:?????????	:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????	
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2
?
G
+__inference_dropout_1_layer_call_fn_3094578

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_30937672
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
/__inference_tribrid_model_layer_call_fn_3093825
window_inputs
block_rewards_inputs

days_input
unknown: 
	unknown_0: 
	unknown_1:	 
	unknown_2: 
	unknown_3:	?
	unknown_4:	?
	unknown_5:	?
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallwindow_inputsblock_rewards_inputs
days_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_tribrid_model_layer_call_and_return_conditional_losses_30938062
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:?????????:?????????	:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:?????????
'
_user_specified_namewindow_inputs:]Y
'
_output_shapes
:?????????	
.
_user_specified_nameblock_rewards_inputs:SO
'
_output_shapes
:?????????
$
_user_specified_name
days_input
?
e
F__inference_dropout_1_layer_call_and_return_conditional_losses_3093855

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
dtype0*

seed*2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:??????????2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
E__inference_conv1d_4_layer_call_and_return_conditional_losses_3094490

inputsA
+conv1d_expanddims_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOp?
Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       2
Pad/paddingsf
PadPadinputsPad/paddings:output:0*
T0*+
_output_shapes
:?????????2
Pady
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsPad:output:0conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:????????? *
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? 2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:????????? 2
Reluq
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:????????? 2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?"
?
E__inference_dense_96_layer_call_and_return_conditional_losses_3094558

inputs4
!tensordot_readvariableop_resource:	?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOpa
CastCastinputs*

DstT0*

SrcT0*+
_output_shapes
:?????????2
Cast?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeZ
Tensordot/ShapeShapeCast:y:0*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeCast:y:0Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:??????????2
Relur
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
? 
?
E__inference_dense_97_layer_call_and_return_conditional_losses_3094639

inputs4
!tensordot_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:??????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2	
BiasAddo
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?-
?
J__inference_tribrid_model_layer_call_and_return_conditional_losses_3094115
window_inputs
block_rewards_inputs

days_input&
conv1d_4_3094092: 
conv1d_4_3094094: &
conv1d_5_3094097:	 
conv1d_5_3094099: #
dense_96_3094102:	?
dense_96_3094104:	?#
dense_97_3094109:	?
dense_97_3094111:
identity?? conv1d_4/StatefulPartitionedCall? conv1d_5/StatefulPartitionedCall? dense_96/StatefulPartitionedCall? dense_97/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?
lambda_19/PartitionedCallPartitionedCall
days_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_lambda_19_layer_call_and_return_conditional_losses_30939442
lambda_19/PartitionedCall
lambda_18/CastCastblock_rewards_inputs*

DstT0*

SrcT0*'
_output_shapes
:?????????	2
lambda_18/Cast?
lambda_18/PartitionedCallPartitionedCalllambda_18/Cast:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_lambda_18_layer_call_and_return_conditional_losses_30939272
lambda_18/PartitionedCallx
lambda_17/CastCastwindow_inputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
lambda_17/Cast?
lambda_17/PartitionedCallPartitionedCalllambda_17/Cast:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_lambda_17_layer_call_and_return_conditional_losses_30939102
lambda_17/PartitionedCall?
 conv1d_4/StatefulPartitionedCallStatefulPartitionedCall"lambda_17/PartitionedCall:output:0conv1d_4_3094092conv1d_4_3094094*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv1d_4_layer_call_and_return_conditional_losses_30936842"
 conv1d_4/StatefulPartitionedCall?
 conv1d_5/StatefulPartitionedCallStatefulPartitionedCall"lambda_18/PartitionedCall:output:0conv1d_5_3094097conv1d_5_3094099*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv1d_5_layer_call_and_return_conditional_losses_30937082"
 conv1d_5/StatefulPartitionedCall?
 dense_96/StatefulPartitionedCallStatefulPartitionedCall"lambda_19/PartitionedCall:output:0dense_96_3094102dense_96_3094104*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_96_layer_call_and_return_conditional_losses_30937462"
 dense_96/StatefulPartitionedCall?
 Combined_outputs/PartitionedCallPartitionedCall)conv1d_4/StatefulPartitionedCall:output:0)conv1d_5/StatefulPartitionedCall:output:0)dense_96/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_Combined_outputs_layer_call_and_return_conditional_losses_30937602"
 Combined_outputs/PartitionedCall?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall)Combined_outputs/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_30938552#
!dropout_1/StatefulPartitionedCall?
 dense_97/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_97_3094109dense_97_3094111*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_97_layer_call_and_return_conditional_losses_30937992"
 dense_97/StatefulPartitionedCall?
IdentityIdentity)dense_97/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp!^conv1d_4/StatefulPartitionedCall!^conv1d_5/StatefulPartitionedCall!^dense_96/StatefulPartitionedCall!^dense_97/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:?????????:?????????	:?????????: : : : : : : : 2D
 conv1d_4/StatefulPartitionedCall conv1d_4/StatefulPartitionedCall2D
 conv1d_5/StatefulPartitionedCall conv1d_5/StatefulPartitionedCall2D
 dense_96/StatefulPartitionedCall dense_96/StatefulPartitionedCall2D
 dense_97/StatefulPartitionedCall dense_97/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall:V R
'
_output_shapes
:?????????
'
_user_specified_namewindow_inputs:]Y
'
_output_shapes
:?????????	
.
_user_specified_nameblock_rewards_inputs:SO
'
_output_shapes
:?????????
$
_user_specified_name
days_input
?
?
%__inference_signature_wrapper_3094146
block_rewards_inputs

days_input
window_inputs
unknown: 
	unknown_0: 
	unknown_1:	 
	unknown_2: 
	unknown_3:	?
	unknown_4:	?
	unknown_5:	?
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallwindow_inputsblock_rewards_inputs
days_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__wrapped_model_30936292
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:?????????	:?????????:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
'
_output_shapes
:?????????	
.
_user_specified_nameblock_rewards_inputs:SO
'
_output_shapes
:?????????
$
_user_specified_name
days_input:VR
'
_output_shapes
:?????????
'
_user_specified_namewindow_inputs
?
e
F__inference_dropout_1_layer_call_and_return_conditional_losses_3094600

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
dtype0*

seed*2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:??????????2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
M__inference_Combined_outputs_layer_call_and_return_conditional_losses_3094573
inputs_0
inputs_1
inputs_2
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputs_0inputs_1inputs_2concat/axis:output:0*
N*
T0*,
_output_shapes
:??????????2
concath
IdentityIdentityconcat:output:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:????????? :????????? :??????????:U Q
+
_output_shapes
:????????? 
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:????????? 
"
_user_specified_name
inputs/1:VR
,
_output_shapes
:??????????
"
_user_specified_name
inputs/2
?
?
E__inference_conv1d_4_layer_call_and_return_conditional_losses_3093684

inputsA
+conv1d_expanddims_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOp?
Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       2
Pad/paddingsf
PadPadinputsPad/paddings:output:0*
T0*+
_output_shapes
:?????????2
Pady
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsPad:output:0conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:????????? *
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? 2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:????????? 2
Reluq
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:????????? 2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
Ό
?
J__inference_tribrid_model_layer_call_and_return_conditional_losses_3094397
inputs_0
inputs_1
inputs_2J
4conv1d_4_conv1d_expanddims_1_readvariableop_resource: 6
(conv1d_4_biasadd_readvariableop_resource: J
4conv1d_5_conv1d_expanddims_1_readvariableop_resource:	 6
(conv1d_5_biasadd_readvariableop_resource: =
*dense_96_tensordot_readvariableop_resource:	?7
(dense_96_biasadd_readvariableop_resource:	?=
*dense_97_tensordot_readvariableop_resource:	?6
(dense_97_biasadd_readvariableop_resource:
identity??conv1d_4/BiasAdd/ReadVariableOp?+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp?conv1d_5/BiasAdd/ReadVariableOp?+conv1d_5/conv1d/ExpandDims_1/ReadVariableOp?dense_96/BiasAdd/ReadVariableOp?!dense_96/Tensordot/ReadVariableOp?dense_97/BiasAdd/ReadVariableOp?!dense_97/Tensordot/ReadVariableOpv
lambda_19/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
lambda_19/ExpandDims/dim?
lambda_19/ExpandDims
ExpandDimsinputs_2!lambda_19/ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2
lambda_19/ExpandDimss
lambda_18/CastCastinputs_1*

DstT0*

SrcT0*'
_output_shapes
:?????????	2
lambda_18/Castv
lambda_18/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
lambda_18/ExpandDims/dim?
lambda_18/ExpandDims
ExpandDimslambda_18/Cast:y:0!lambda_18/ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????	2
lambda_18/ExpandDimss
lambda_17/CastCastinputs_0*

DstT0*

SrcT0*'
_output_shapes
:?????????2
lambda_17/Castv
lambda_17/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
lambda_17/ExpandDims/dim?
lambda_17/ExpandDims
ExpandDimslambda_17/Cast:y:0!lambda_17/ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2
lambda_17/ExpandDims?
conv1d_4/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       2
conv1d_4/Pad/paddings?
conv1d_4/PadPadlambda_17/ExpandDims:output:0conv1d_4/Pad/paddings:output:0*
T0*+
_output_shapes
:?????????2
conv1d_4/Pad?
conv1d_4/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
conv1d_4/conv1d/ExpandDims/dim?
conv1d_4/conv1d/ExpandDims
ExpandDimsconv1d_4/Pad:output:0'conv1d_4/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????2
conv1d_4/conv1d/ExpandDims?
+conv1d_4/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_4_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype02-
+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp?
 conv1d_4/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_4/conv1d/ExpandDims_1/dim?
conv1d_4/conv1d/ExpandDims_1
ExpandDims3conv1d_4/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_4/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 2
conv1d_4/conv1d/ExpandDims_1?
conv1d_4/conv1dConv2D#conv1d_4/conv1d/ExpandDims:output:0%conv1d_4/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
conv1d_4/conv1d?
conv1d_4/conv1d/SqueezeSqueezeconv1d_4/conv1d:output:0*
T0*+
_output_shapes
:????????? *
squeeze_dims

?????????2
conv1d_4/conv1d/Squeeze?
conv1d_4/BiasAdd/ReadVariableOpReadVariableOp(conv1d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv1d_4/BiasAdd/ReadVariableOp?
conv1d_4/BiasAddBiasAdd conv1d_4/conv1d/Squeeze:output:0'conv1d_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? 2
conv1d_4/BiasAddw
conv1d_4/ReluReluconv1d_4/BiasAdd:output:0*
T0*+
_output_shapes
:????????? 2
conv1d_4/Relu?
conv1d_5/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       2
conv1d_5/Pad/paddings?
conv1d_5/PadPadlambda_18/ExpandDims:output:0conv1d_5/Pad/paddings:output:0*
T0*+
_output_shapes
:?????????	2
conv1d_5/Pad?
conv1d_5/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
conv1d_5/conv1d/ExpandDims/dim?
conv1d_5/conv1d/ExpandDims
ExpandDimsconv1d_5/Pad:output:0'conv1d_5/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????	2
conv1d_5/conv1d/ExpandDims?
+conv1d_5/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_5_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	 *
dtype02-
+conv1d_5/conv1d/ExpandDims_1/ReadVariableOp?
 conv1d_5/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_5/conv1d/ExpandDims_1/dim?
conv1d_5/conv1d/ExpandDims_1
ExpandDims3conv1d_5/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_5/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:	 2
conv1d_5/conv1d/ExpandDims_1?
conv1d_5/conv1dConv2D#conv1d_5/conv1d/ExpandDims:output:0%conv1d_5/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
conv1d_5/conv1d?
conv1d_5/conv1d/SqueezeSqueezeconv1d_5/conv1d:output:0*
T0*+
_output_shapes
:????????? *
squeeze_dims

?????????2
conv1d_5/conv1d/Squeeze?
conv1d_5/BiasAdd/ReadVariableOpReadVariableOp(conv1d_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv1d_5/BiasAdd/ReadVariableOp?
conv1d_5/BiasAddBiasAdd conv1d_5/conv1d/Squeeze:output:0'conv1d_5/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? 2
conv1d_5/BiasAddw
conv1d_5/ReluReluconv1d_5/BiasAdd:output:0*
T0*+
_output_shapes
:????????? 2
conv1d_5/Relu?
dense_96/CastCastlambda_19/ExpandDims:output:0*

DstT0*

SrcT0*+
_output_shapes
:?????????2
dense_96/Cast?
!dense_96/Tensordot/ReadVariableOpReadVariableOp*dense_96_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!dense_96/Tensordot/ReadVariableOp|
dense_96/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_96/Tensordot/axes?
dense_96/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_96/Tensordot/freeu
dense_96/Tensordot/ShapeShapedense_96/Cast:y:0*
T0*
_output_shapes
:2
dense_96/Tensordot/Shape?
 dense_96/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_96/Tensordot/GatherV2/axis?
dense_96/Tensordot/GatherV2GatherV2!dense_96/Tensordot/Shape:output:0 dense_96/Tensordot/free:output:0)dense_96/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_96/Tensordot/GatherV2?
"dense_96/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_96/Tensordot/GatherV2_1/axis?
dense_96/Tensordot/GatherV2_1GatherV2!dense_96/Tensordot/Shape:output:0 dense_96/Tensordot/axes:output:0+dense_96/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_96/Tensordot/GatherV2_1~
dense_96/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_96/Tensordot/Const?
dense_96/Tensordot/ProdProd$dense_96/Tensordot/GatherV2:output:0!dense_96/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_96/Tensordot/Prod?
dense_96/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_96/Tensordot/Const_1?
dense_96/Tensordot/Prod_1Prod&dense_96/Tensordot/GatherV2_1:output:0#dense_96/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_96/Tensordot/Prod_1?
dense_96/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_96/Tensordot/concat/axis?
dense_96/Tensordot/concatConcatV2 dense_96/Tensordot/free:output:0 dense_96/Tensordot/axes:output:0'dense_96/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_96/Tensordot/concat?
dense_96/Tensordot/stackPack dense_96/Tensordot/Prod:output:0"dense_96/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_96/Tensordot/stack?
dense_96/Tensordot/transpose	Transposedense_96/Cast:y:0"dense_96/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????2
dense_96/Tensordot/transpose?
dense_96/Tensordot/ReshapeReshape dense_96/Tensordot/transpose:y:0!dense_96/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_96/Tensordot/Reshape?
dense_96/Tensordot/MatMulMatMul#dense_96/Tensordot/Reshape:output:0)dense_96/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_96/Tensordot/MatMul?
dense_96/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
dense_96/Tensordot/Const_2?
 dense_96/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_96/Tensordot/concat_1/axis?
dense_96/Tensordot/concat_1ConcatV2$dense_96/Tensordot/GatherV2:output:0#dense_96/Tensordot/Const_2:output:0)dense_96/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_96/Tensordot/concat_1?
dense_96/TensordotReshape#dense_96/Tensordot/MatMul:product:0$dense_96/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2
dense_96/Tensordot?
dense_96/BiasAdd/ReadVariableOpReadVariableOp(dense_96_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_96/BiasAdd/ReadVariableOp?
dense_96/BiasAddBiasAdddense_96/Tensordot:output:0'dense_96/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2
dense_96/BiasAddx
dense_96/ReluReludense_96/BiasAdd:output:0*
T0*,
_output_shapes
:??????????2
dense_96/Relu~
Combined_outputs/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
Combined_outputs/concat/axis?
Combined_outputs/concatConcatV2conv1d_4/Relu:activations:0conv1d_5/Relu:activations:0dense_96/Relu:activations:0%Combined_outputs/concat/axis:output:0*
N*
T0*,
_output_shapes
:??????????2
Combined_outputs/concatw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_1/dropout/Const?
dropout_1/dropout/MulMul Combined_outputs/concat:output:0 dropout_1/dropout/Const:output:0*
T0*,
_output_shapes
:??????????2
dropout_1/dropout/Mul?
dropout_1/dropout/ShapeShape Combined_outputs/concat:output:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
dtype0*

seed*20
.dropout_1/dropout/random_uniform/RandomUniform?
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 dropout_1/dropout/GreaterEqual/y?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????2 
dropout_1/dropout/GreaterEqual?
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????2
dropout_1/dropout/Cast?
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*,
_output_shapes
:??????????2
dropout_1/dropout/Mul_1?
!dense_97/Tensordot/ReadVariableOpReadVariableOp*dense_97_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!dense_97/Tensordot/ReadVariableOp|
dense_97/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_97/Tensordot/axes?
dense_97/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_97/Tensordot/free
dense_97/Tensordot/ShapeShapedropout_1/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
dense_97/Tensordot/Shape?
 dense_97/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_97/Tensordot/GatherV2/axis?
dense_97/Tensordot/GatherV2GatherV2!dense_97/Tensordot/Shape:output:0 dense_97/Tensordot/free:output:0)dense_97/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_97/Tensordot/GatherV2?
"dense_97/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_97/Tensordot/GatherV2_1/axis?
dense_97/Tensordot/GatherV2_1GatherV2!dense_97/Tensordot/Shape:output:0 dense_97/Tensordot/axes:output:0+dense_97/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_97/Tensordot/GatherV2_1~
dense_97/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_97/Tensordot/Const?
dense_97/Tensordot/ProdProd$dense_97/Tensordot/GatherV2:output:0!dense_97/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_97/Tensordot/Prod?
dense_97/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_97/Tensordot/Const_1?
dense_97/Tensordot/Prod_1Prod&dense_97/Tensordot/GatherV2_1:output:0#dense_97/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_97/Tensordot/Prod_1?
dense_97/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_97/Tensordot/concat/axis?
dense_97/Tensordot/concatConcatV2 dense_97/Tensordot/free:output:0 dense_97/Tensordot/axes:output:0'dense_97/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_97/Tensordot/concat?
dense_97/Tensordot/stackPack dense_97/Tensordot/Prod:output:0"dense_97/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_97/Tensordot/stack?
dense_97/Tensordot/transpose	Transposedropout_1/dropout/Mul_1:z:0"dense_97/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????2
dense_97/Tensordot/transpose?
dense_97/Tensordot/ReshapeReshape dense_97/Tensordot/transpose:y:0!dense_97/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_97/Tensordot/Reshape?
dense_97/Tensordot/MatMulMatMul#dense_97/Tensordot/Reshape:output:0)dense_97/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_97/Tensordot/MatMul?
dense_97/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense_97/Tensordot/Const_2?
 dense_97/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_97/Tensordot/concat_1/axis?
dense_97/Tensordot/concat_1ConcatV2$dense_97/Tensordot/GatherV2:output:0#dense_97/Tensordot/Const_2:output:0)dense_97/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_97/Tensordot/concat_1?
dense_97/TensordotReshape#dense_97/Tensordot/MatMul:product:0$dense_97/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????2
dense_97/Tensordot?
dense_97/BiasAdd/ReadVariableOpReadVariableOp(dense_97_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_97/BiasAdd/ReadVariableOp?
dense_97/BiasAddBiasAdddense_97/Tensordot:output:0'dense_97/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2
dense_97/BiasAddx
IdentityIdentitydense_97/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp ^conv1d_4/BiasAdd/ReadVariableOp,^conv1d_4/conv1d/ExpandDims_1/ReadVariableOp ^conv1d_5/BiasAdd/ReadVariableOp,^conv1d_5/conv1d/ExpandDims_1/ReadVariableOp ^dense_96/BiasAdd/ReadVariableOp"^dense_96/Tensordot/ReadVariableOp ^dense_97/BiasAdd/ReadVariableOp"^dense_97/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:?????????:?????????	:?????????: : : : : : : : 2B
conv1d_4/BiasAdd/ReadVariableOpconv1d_4/BiasAdd/ReadVariableOp2Z
+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp2B
conv1d_5/BiasAdd/ReadVariableOpconv1d_5/BiasAdd/ReadVariableOp2Z
+conv1d_5/conv1d/ExpandDims_1/ReadVariableOp+conv1d_5/conv1d/ExpandDims_1/ReadVariableOp2B
dense_96/BiasAdd/ReadVariableOpdense_96/BiasAdd/ReadVariableOp2F
!dense_96/Tensordot/ReadVariableOp!dense_96/Tensordot/ReadVariableOp2B
dense_97/BiasAdd/ReadVariableOpdense_97/BiasAdd/ReadVariableOp2F
!dense_97/Tensordot/ReadVariableOp!dense_97/Tensordot/ReadVariableOp:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????	
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2
?
?
*__inference_dense_96_layer_call_fn_3094526

inputs
unknown:	?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_96_layer_call_and_return_conditional_losses_30937462
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
E__inference_conv1d_5_layer_call_and_return_conditional_losses_3094517

inputsA
+conv1d_expanddims_1_readvariableop_resource:	 -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOp?
Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       2
Pad/paddingsf
PadPadinputsPad/paddings:output:0*
T0*+
_output_shapes
:?????????	2
Pady
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsPad:output:0conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????	2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	 *
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:	 2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:????????? *
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? 2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:????????? 2
Reluq
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:????????? 2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
/__inference_tribrid_model_layer_call_fn_3094192
inputs_0
inputs_1
inputs_2
unknown: 
	unknown_0: 
	unknown_1:	 
	unknown_2: 
	unknown_3:	?
	unknown_4:	?
	unknown_5:	?
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_tribrid_model_layer_call_and_return_conditional_losses_30940072
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:?????????:?????????	:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????	
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2
?
d
F__inference_dropout_1_layer_call_and_return_conditional_losses_3094588

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:??????????2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
F__inference_lambda_19_layer_call_and_return_conditional_losses_3093646

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim}

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2

ExpandDimsk
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
#__inference__traced_restore_3094872
file_prefix6
 assignvariableop_conv1d_4_kernel: .
 assignvariableop_1_conv1d_4_bias: 8
"assignvariableop_2_conv1d_5_kernel:	 .
 assignvariableop_3_conv1d_5_bias: 5
"assignvariableop_4_dense_96_kernel:	?/
 assignvariableop_5_dense_96_bias:	?5
"assignvariableop_6_dense_97_kernel:	?.
 assignvariableop_7_dense_97_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: @
*assignvariableop_17_adam_conv1d_4_kernel_m: 6
(assignvariableop_18_adam_conv1d_4_bias_m: @
*assignvariableop_19_adam_conv1d_5_kernel_m:	 6
(assignvariableop_20_adam_conv1d_5_bias_m: =
*assignvariableop_21_adam_dense_96_kernel_m:	?7
(assignvariableop_22_adam_dense_96_bias_m:	?=
*assignvariableop_23_adam_dense_97_kernel_m:	?6
(assignvariableop_24_adam_dense_97_bias_m:@
*assignvariableop_25_adam_conv1d_4_kernel_v: 6
(assignvariableop_26_adam_conv1d_4_bias_v: @
*assignvariableop_27_adam_conv1d_5_kernel_v:	 6
(assignvariableop_28_adam_conv1d_5_bias_v: =
*assignvariableop_29_adam_dense_96_kernel_v:	?7
(assignvariableop_30_adam_dense_96_bias_v:	?=
*assignvariableop_31_adam_dense_97_kernel_v:	?6
(assignvariableop_32_adam_dense_97_bias_v:
identity_34??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*?
value?B?"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp assignvariableop_conv1d_4_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv1d_4_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv1d_5_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv1d_5_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_96_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_96_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_97_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_97_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp*assignvariableop_17_adam_conv1d_4_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adam_conv1d_4_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_conv1d_5_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_conv1d_5_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_dense_96_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_dense_96_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_97_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_97_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_conv1d_4_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_conv1d_4_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_conv1d_5_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_conv1d_5_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_96_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_96_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_97_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_97_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_329
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_33f
Identity_34IdentityIdentity_33:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_34?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_34Identity_34:output:0*W
_input_shapesF
D: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322(
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
?"
?
E__inference_dense_96_layer_call_and_return_conditional_losses_3093746

inputs4
!tensordot_readvariableop_resource:	?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOpa
CastCastinputs*

DstT0*

SrcT0*+
_output_shapes
:?????????2
Cast?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeZ
Tensordot/ShapeShapeCast:y:0*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeCast:y:0Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:??????????2
Relur
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
b
F__inference_lambda_17_layer_call_and_return_conditional_losses_3093910

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim}

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2

ExpandDimsk
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
G
+__inference_lambda_18_layer_call_fn_3094424

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_lambda_18_layer_call_and_return_conditional_losses_30936552
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????	:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
G
+__inference_lambda_19_layer_call_fn_3094451

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_lambda_19_layer_call_and_return_conditional_losses_30939442
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
d
+__inference_dropout_1_layer_call_fn_3094583

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_30938552
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
F__inference_lambda_19_layer_call_and_return_conditional_losses_3094457

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim}

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2

ExpandDimsk
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
G
+__inference_lambda_18_layer_call_fn_3094429

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_lambda_18_layer_call_and_return_conditional_losses_30939272
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????	:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
*__inference_conv1d_4_layer_call_fn_3094472

inputs
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv1d_4_layer_call_and_return_conditional_losses_30936842
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
"__inference__wrapped_model_3093629
window_inputs
block_rewards_inputs

days_inputX
Btribrid_model_conv1d_4_conv1d_expanddims_1_readvariableop_resource: D
6tribrid_model_conv1d_4_biasadd_readvariableop_resource: X
Btribrid_model_conv1d_5_conv1d_expanddims_1_readvariableop_resource:	 D
6tribrid_model_conv1d_5_biasadd_readvariableop_resource: K
8tribrid_model_dense_96_tensordot_readvariableop_resource:	?E
6tribrid_model_dense_96_biasadd_readvariableop_resource:	?K
8tribrid_model_dense_97_tensordot_readvariableop_resource:	?D
6tribrid_model_dense_97_biasadd_readvariableop_resource:
identity??-tribrid_model/conv1d_4/BiasAdd/ReadVariableOp?9tribrid_model/conv1d_4/conv1d/ExpandDims_1/ReadVariableOp?-tribrid_model/conv1d_5/BiasAdd/ReadVariableOp?9tribrid_model/conv1d_5/conv1d/ExpandDims_1/ReadVariableOp?-tribrid_model/dense_96/BiasAdd/ReadVariableOp?/tribrid_model/dense_96/Tensordot/ReadVariableOp?-tribrid_model/dense_97/BiasAdd/ReadVariableOp?/tribrid_model/dense_97/Tensordot/ReadVariableOp?
&tribrid_model/lambda_19/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&tribrid_model/lambda_19/ExpandDims/dim?
"tribrid_model/lambda_19/ExpandDims
ExpandDims
days_input/tribrid_model/lambda_19/ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2$
"tribrid_model/lambda_19/ExpandDims?
tribrid_model/lambda_18/CastCastblock_rewards_inputs*

DstT0*

SrcT0*'
_output_shapes
:?????????	2
tribrid_model/lambda_18/Cast?
&tribrid_model/lambda_18/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&tribrid_model/lambda_18/ExpandDims/dim?
"tribrid_model/lambda_18/ExpandDims
ExpandDims tribrid_model/lambda_18/Cast:y:0/tribrid_model/lambda_18/ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????	2$
"tribrid_model/lambda_18/ExpandDims?
tribrid_model/lambda_17/CastCastwindow_inputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
tribrid_model/lambda_17/Cast?
&tribrid_model/lambda_17/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&tribrid_model/lambda_17/ExpandDims/dim?
"tribrid_model/lambda_17/ExpandDims
ExpandDims tribrid_model/lambda_17/Cast:y:0/tribrid_model/lambda_17/ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2$
"tribrid_model/lambda_17/ExpandDims?
#tribrid_model/conv1d_4/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       2%
#tribrid_model/conv1d_4/Pad/paddings?
tribrid_model/conv1d_4/PadPad+tribrid_model/lambda_17/ExpandDims:output:0,tribrid_model/conv1d_4/Pad/paddings:output:0*
T0*+
_output_shapes
:?????????2
tribrid_model/conv1d_4/Pad?
,tribrid_model/conv1d_4/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2.
,tribrid_model/conv1d_4/conv1d/ExpandDims/dim?
(tribrid_model/conv1d_4/conv1d/ExpandDims
ExpandDims#tribrid_model/conv1d_4/Pad:output:05tribrid_model/conv1d_4/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????2*
(tribrid_model/conv1d_4/conv1d/ExpandDims?
9tribrid_model/conv1d_4/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpBtribrid_model_conv1d_4_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype02;
9tribrid_model/conv1d_4/conv1d/ExpandDims_1/ReadVariableOp?
.tribrid_model/conv1d_4/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 20
.tribrid_model/conv1d_4/conv1d/ExpandDims_1/dim?
*tribrid_model/conv1d_4/conv1d/ExpandDims_1
ExpandDimsAtribrid_model/conv1d_4/conv1d/ExpandDims_1/ReadVariableOp:value:07tribrid_model/conv1d_4/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 2,
*tribrid_model/conv1d_4/conv1d/ExpandDims_1?
tribrid_model/conv1d_4/conv1dConv2D1tribrid_model/conv1d_4/conv1d/ExpandDims:output:03tribrid_model/conv1d_4/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
tribrid_model/conv1d_4/conv1d?
%tribrid_model/conv1d_4/conv1d/SqueezeSqueeze&tribrid_model/conv1d_4/conv1d:output:0*
T0*+
_output_shapes
:????????? *
squeeze_dims

?????????2'
%tribrid_model/conv1d_4/conv1d/Squeeze?
-tribrid_model/conv1d_4/BiasAdd/ReadVariableOpReadVariableOp6tribrid_model_conv1d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-tribrid_model/conv1d_4/BiasAdd/ReadVariableOp?
tribrid_model/conv1d_4/BiasAddBiasAdd.tribrid_model/conv1d_4/conv1d/Squeeze:output:05tribrid_model/conv1d_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? 2 
tribrid_model/conv1d_4/BiasAdd?
tribrid_model/conv1d_4/ReluRelu'tribrid_model/conv1d_4/BiasAdd:output:0*
T0*+
_output_shapes
:????????? 2
tribrid_model/conv1d_4/Relu?
#tribrid_model/conv1d_5/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       2%
#tribrid_model/conv1d_5/Pad/paddings?
tribrid_model/conv1d_5/PadPad+tribrid_model/lambda_18/ExpandDims:output:0,tribrid_model/conv1d_5/Pad/paddings:output:0*
T0*+
_output_shapes
:?????????	2
tribrid_model/conv1d_5/Pad?
,tribrid_model/conv1d_5/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2.
,tribrid_model/conv1d_5/conv1d/ExpandDims/dim?
(tribrid_model/conv1d_5/conv1d/ExpandDims
ExpandDims#tribrid_model/conv1d_5/Pad:output:05tribrid_model/conv1d_5/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????	2*
(tribrid_model/conv1d_5/conv1d/ExpandDims?
9tribrid_model/conv1d_5/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpBtribrid_model_conv1d_5_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	 *
dtype02;
9tribrid_model/conv1d_5/conv1d/ExpandDims_1/ReadVariableOp?
.tribrid_model/conv1d_5/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 20
.tribrid_model/conv1d_5/conv1d/ExpandDims_1/dim?
*tribrid_model/conv1d_5/conv1d/ExpandDims_1
ExpandDimsAtribrid_model/conv1d_5/conv1d/ExpandDims_1/ReadVariableOp:value:07tribrid_model/conv1d_5/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:	 2,
*tribrid_model/conv1d_5/conv1d/ExpandDims_1?
tribrid_model/conv1d_5/conv1dConv2D1tribrid_model/conv1d_5/conv1d/ExpandDims:output:03tribrid_model/conv1d_5/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
tribrid_model/conv1d_5/conv1d?
%tribrid_model/conv1d_5/conv1d/SqueezeSqueeze&tribrid_model/conv1d_5/conv1d:output:0*
T0*+
_output_shapes
:????????? *
squeeze_dims

?????????2'
%tribrid_model/conv1d_5/conv1d/Squeeze?
-tribrid_model/conv1d_5/BiasAdd/ReadVariableOpReadVariableOp6tribrid_model_conv1d_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-tribrid_model/conv1d_5/BiasAdd/ReadVariableOp?
tribrid_model/conv1d_5/BiasAddBiasAdd.tribrid_model/conv1d_5/conv1d/Squeeze:output:05tribrid_model/conv1d_5/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? 2 
tribrid_model/conv1d_5/BiasAdd?
tribrid_model/conv1d_5/ReluRelu'tribrid_model/conv1d_5/BiasAdd:output:0*
T0*+
_output_shapes
:????????? 2
tribrid_model/conv1d_5/Relu?
tribrid_model/dense_96/CastCast+tribrid_model/lambda_19/ExpandDims:output:0*

DstT0*

SrcT0*+
_output_shapes
:?????????2
tribrid_model/dense_96/Cast?
/tribrid_model/dense_96/Tensordot/ReadVariableOpReadVariableOp8tribrid_model_dense_96_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype021
/tribrid_model/dense_96/Tensordot/ReadVariableOp?
%tribrid_model/dense_96/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2'
%tribrid_model/dense_96/Tensordot/axes?
%tribrid_model/dense_96/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2'
%tribrid_model/dense_96/Tensordot/free?
&tribrid_model/dense_96/Tensordot/ShapeShapetribrid_model/dense_96/Cast:y:0*
T0*
_output_shapes
:2(
&tribrid_model/dense_96/Tensordot/Shape?
.tribrid_model/dense_96/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.tribrid_model/dense_96/Tensordot/GatherV2/axis?
)tribrid_model/dense_96/Tensordot/GatherV2GatherV2/tribrid_model/dense_96/Tensordot/Shape:output:0.tribrid_model/dense_96/Tensordot/free:output:07tribrid_model/dense_96/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)tribrid_model/dense_96/Tensordot/GatherV2?
0tribrid_model/dense_96/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0tribrid_model/dense_96/Tensordot/GatherV2_1/axis?
+tribrid_model/dense_96/Tensordot/GatherV2_1GatherV2/tribrid_model/dense_96/Tensordot/Shape:output:0.tribrid_model/dense_96/Tensordot/axes:output:09tribrid_model/dense_96/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2-
+tribrid_model/dense_96/Tensordot/GatherV2_1?
&tribrid_model/dense_96/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2(
&tribrid_model/dense_96/Tensordot/Const?
%tribrid_model/dense_96/Tensordot/ProdProd2tribrid_model/dense_96/Tensordot/GatherV2:output:0/tribrid_model/dense_96/Tensordot/Const:output:0*
T0*
_output_shapes
: 2'
%tribrid_model/dense_96/Tensordot/Prod?
(tribrid_model/dense_96/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2*
(tribrid_model/dense_96/Tensordot/Const_1?
'tribrid_model/dense_96/Tensordot/Prod_1Prod4tribrid_model/dense_96/Tensordot/GatherV2_1:output:01tribrid_model/dense_96/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2)
'tribrid_model/dense_96/Tensordot/Prod_1?
,tribrid_model/dense_96/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,tribrid_model/dense_96/Tensordot/concat/axis?
'tribrid_model/dense_96/Tensordot/concatConcatV2.tribrid_model/dense_96/Tensordot/free:output:0.tribrid_model/dense_96/Tensordot/axes:output:05tribrid_model/dense_96/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2)
'tribrid_model/dense_96/Tensordot/concat?
&tribrid_model/dense_96/Tensordot/stackPack.tribrid_model/dense_96/Tensordot/Prod:output:00tribrid_model/dense_96/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2(
&tribrid_model/dense_96/Tensordot/stack?
*tribrid_model/dense_96/Tensordot/transpose	Transposetribrid_model/dense_96/Cast:y:00tribrid_model/dense_96/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????2,
*tribrid_model/dense_96/Tensordot/transpose?
(tribrid_model/dense_96/Tensordot/ReshapeReshape.tribrid_model/dense_96/Tensordot/transpose:y:0/tribrid_model/dense_96/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2*
(tribrid_model/dense_96/Tensordot/Reshape?
'tribrid_model/dense_96/Tensordot/MatMulMatMul1tribrid_model/dense_96/Tensordot/Reshape:output:07tribrid_model/dense_96/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2)
'tribrid_model/dense_96/Tensordot/MatMul?
(tribrid_model/dense_96/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2*
(tribrid_model/dense_96/Tensordot/Const_2?
.tribrid_model/dense_96/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.tribrid_model/dense_96/Tensordot/concat_1/axis?
)tribrid_model/dense_96/Tensordot/concat_1ConcatV22tribrid_model/dense_96/Tensordot/GatherV2:output:01tribrid_model/dense_96/Tensordot/Const_2:output:07tribrid_model/dense_96/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2+
)tribrid_model/dense_96/Tensordot/concat_1?
 tribrid_model/dense_96/TensordotReshape1tribrid_model/dense_96/Tensordot/MatMul:product:02tribrid_model/dense_96/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2"
 tribrid_model/dense_96/Tensordot?
-tribrid_model/dense_96/BiasAdd/ReadVariableOpReadVariableOp6tribrid_model_dense_96_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-tribrid_model/dense_96/BiasAdd/ReadVariableOp?
tribrid_model/dense_96/BiasAddBiasAdd)tribrid_model/dense_96/Tensordot:output:05tribrid_model/dense_96/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2 
tribrid_model/dense_96/BiasAdd?
tribrid_model/dense_96/ReluRelu'tribrid_model/dense_96/BiasAdd:output:0*
T0*,
_output_shapes
:??????????2
tribrid_model/dense_96/Relu?
*tribrid_model/Combined_outputs/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2,
*tribrid_model/Combined_outputs/concat/axis?
%tribrid_model/Combined_outputs/concatConcatV2)tribrid_model/conv1d_4/Relu:activations:0)tribrid_model/conv1d_5/Relu:activations:0)tribrid_model/dense_96/Relu:activations:03tribrid_model/Combined_outputs/concat/axis:output:0*
N*
T0*,
_output_shapes
:??????????2'
%tribrid_model/Combined_outputs/concat?
 tribrid_model/dropout_1/IdentityIdentity.tribrid_model/Combined_outputs/concat:output:0*
T0*,
_output_shapes
:??????????2"
 tribrid_model/dropout_1/Identity?
/tribrid_model/dense_97/Tensordot/ReadVariableOpReadVariableOp8tribrid_model_dense_97_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype021
/tribrid_model/dense_97/Tensordot/ReadVariableOp?
%tribrid_model/dense_97/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2'
%tribrid_model/dense_97/Tensordot/axes?
%tribrid_model/dense_97/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2'
%tribrid_model/dense_97/Tensordot/free?
&tribrid_model/dense_97/Tensordot/ShapeShape)tribrid_model/dropout_1/Identity:output:0*
T0*
_output_shapes
:2(
&tribrid_model/dense_97/Tensordot/Shape?
.tribrid_model/dense_97/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.tribrid_model/dense_97/Tensordot/GatherV2/axis?
)tribrid_model/dense_97/Tensordot/GatherV2GatherV2/tribrid_model/dense_97/Tensordot/Shape:output:0.tribrid_model/dense_97/Tensordot/free:output:07tribrid_model/dense_97/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)tribrid_model/dense_97/Tensordot/GatherV2?
0tribrid_model/dense_97/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0tribrid_model/dense_97/Tensordot/GatherV2_1/axis?
+tribrid_model/dense_97/Tensordot/GatherV2_1GatherV2/tribrid_model/dense_97/Tensordot/Shape:output:0.tribrid_model/dense_97/Tensordot/axes:output:09tribrid_model/dense_97/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2-
+tribrid_model/dense_97/Tensordot/GatherV2_1?
&tribrid_model/dense_97/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2(
&tribrid_model/dense_97/Tensordot/Const?
%tribrid_model/dense_97/Tensordot/ProdProd2tribrid_model/dense_97/Tensordot/GatherV2:output:0/tribrid_model/dense_97/Tensordot/Const:output:0*
T0*
_output_shapes
: 2'
%tribrid_model/dense_97/Tensordot/Prod?
(tribrid_model/dense_97/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2*
(tribrid_model/dense_97/Tensordot/Const_1?
'tribrid_model/dense_97/Tensordot/Prod_1Prod4tribrid_model/dense_97/Tensordot/GatherV2_1:output:01tribrid_model/dense_97/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2)
'tribrid_model/dense_97/Tensordot/Prod_1?
,tribrid_model/dense_97/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,tribrid_model/dense_97/Tensordot/concat/axis?
'tribrid_model/dense_97/Tensordot/concatConcatV2.tribrid_model/dense_97/Tensordot/free:output:0.tribrid_model/dense_97/Tensordot/axes:output:05tribrid_model/dense_97/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2)
'tribrid_model/dense_97/Tensordot/concat?
&tribrid_model/dense_97/Tensordot/stackPack.tribrid_model/dense_97/Tensordot/Prod:output:00tribrid_model/dense_97/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2(
&tribrid_model/dense_97/Tensordot/stack?
*tribrid_model/dense_97/Tensordot/transpose	Transpose)tribrid_model/dropout_1/Identity:output:00tribrid_model/dense_97/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????2,
*tribrid_model/dense_97/Tensordot/transpose?
(tribrid_model/dense_97/Tensordot/ReshapeReshape.tribrid_model/dense_97/Tensordot/transpose:y:0/tribrid_model/dense_97/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2*
(tribrid_model/dense_97/Tensordot/Reshape?
'tribrid_model/dense_97/Tensordot/MatMulMatMul1tribrid_model/dense_97/Tensordot/Reshape:output:07tribrid_model/dense_97/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2)
'tribrid_model/dense_97/Tensordot/MatMul?
(tribrid_model/dense_97/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(tribrid_model/dense_97/Tensordot/Const_2?
.tribrid_model/dense_97/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.tribrid_model/dense_97/Tensordot/concat_1/axis?
)tribrid_model/dense_97/Tensordot/concat_1ConcatV22tribrid_model/dense_97/Tensordot/GatherV2:output:01tribrid_model/dense_97/Tensordot/Const_2:output:07tribrid_model/dense_97/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2+
)tribrid_model/dense_97/Tensordot/concat_1?
 tribrid_model/dense_97/TensordotReshape1tribrid_model/dense_97/Tensordot/MatMul:product:02tribrid_model/dense_97/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????2"
 tribrid_model/dense_97/Tensordot?
-tribrid_model/dense_97/BiasAdd/ReadVariableOpReadVariableOp6tribrid_model_dense_97_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-tribrid_model/dense_97/BiasAdd/ReadVariableOp?
tribrid_model/dense_97/BiasAddBiasAdd)tribrid_model/dense_97/Tensordot:output:05tribrid_model/dense_97/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2 
tribrid_model/dense_97/BiasAdd?
IdentityIdentity'tribrid_model/dense_97/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp.^tribrid_model/conv1d_4/BiasAdd/ReadVariableOp:^tribrid_model/conv1d_4/conv1d/ExpandDims_1/ReadVariableOp.^tribrid_model/conv1d_5/BiasAdd/ReadVariableOp:^tribrid_model/conv1d_5/conv1d/ExpandDims_1/ReadVariableOp.^tribrid_model/dense_96/BiasAdd/ReadVariableOp0^tribrid_model/dense_96/Tensordot/ReadVariableOp.^tribrid_model/dense_97/BiasAdd/ReadVariableOp0^tribrid_model/dense_97/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:?????????:?????????	:?????????: : : : : : : : 2^
-tribrid_model/conv1d_4/BiasAdd/ReadVariableOp-tribrid_model/conv1d_4/BiasAdd/ReadVariableOp2v
9tribrid_model/conv1d_4/conv1d/ExpandDims_1/ReadVariableOp9tribrid_model/conv1d_4/conv1d/ExpandDims_1/ReadVariableOp2^
-tribrid_model/conv1d_5/BiasAdd/ReadVariableOp-tribrid_model/conv1d_5/BiasAdd/ReadVariableOp2v
9tribrid_model/conv1d_5/conv1d/ExpandDims_1/ReadVariableOp9tribrid_model/conv1d_5/conv1d/ExpandDims_1/ReadVariableOp2^
-tribrid_model/dense_96/BiasAdd/ReadVariableOp-tribrid_model/dense_96/BiasAdd/ReadVariableOp2b
/tribrid_model/dense_96/Tensordot/ReadVariableOp/tribrid_model/dense_96/Tensordot/ReadVariableOp2^
-tribrid_model/dense_97/BiasAdd/ReadVariableOp-tribrid_model/dense_97/BiasAdd/ReadVariableOp2b
/tribrid_model/dense_97/Tensordot/ReadVariableOp/tribrid_model/dense_97/Tensordot/ReadVariableOp:V R
'
_output_shapes
:?????????
'
_user_specified_namewindow_inputs:]Y
'
_output_shapes
:?????????	
.
_user_specified_nameblock_rewards_inputs:SO
'
_output_shapes
:?????????
$
_user_specified_name
days_input
??
?
J__inference_tribrid_model_layer_call_and_return_conditional_losses_3094291
inputs_0
inputs_1
inputs_2J
4conv1d_4_conv1d_expanddims_1_readvariableop_resource: 6
(conv1d_4_biasadd_readvariableop_resource: J
4conv1d_5_conv1d_expanddims_1_readvariableop_resource:	 6
(conv1d_5_biasadd_readvariableop_resource: =
*dense_96_tensordot_readvariableop_resource:	?7
(dense_96_biasadd_readvariableop_resource:	?=
*dense_97_tensordot_readvariableop_resource:	?6
(dense_97_biasadd_readvariableop_resource:
identity??conv1d_4/BiasAdd/ReadVariableOp?+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp?conv1d_5/BiasAdd/ReadVariableOp?+conv1d_5/conv1d/ExpandDims_1/ReadVariableOp?dense_96/BiasAdd/ReadVariableOp?!dense_96/Tensordot/ReadVariableOp?dense_97/BiasAdd/ReadVariableOp?!dense_97/Tensordot/ReadVariableOpv
lambda_19/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
lambda_19/ExpandDims/dim?
lambda_19/ExpandDims
ExpandDimsinputs_2!lambda_19/ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2
lambda_19/ExpandDimss
lambda_18/CastCastinputs_1*

DstT0*

SrcT0*'
_output_shapes
:?????????	2
lambda_18/Castv
lambda_18/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
lambda_18/ExpandDims/dim?
lambda_18/ExpandDims
ExpandDimslambda_18/Cast:y:0!lambda_18/ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????	2
lambda_18/ExpandDimss
lambda_17/CastCastinputs_0*

DstT0*

SrcT0*'
_output_shapes
:?????????2
lambda_17/Castv
lambda_17/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
lambda_17/ExpandDims/dim?
lambda_17/ExpandDims
ExpandDimslambda_17/Cast:y:0!lambda_17/ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2
lambda_17/ExpandDims?
conv1d_4/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       2
conv1d_4/Pad/paddings?
conv1d_4/PadPadlambda_17/ExpandDims:output:0conv1d_4/Pad/paddings:output:0*
T0*+
_output_shapes
:?????????2
conv1d_4/Pad?
conv1d_4/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
conv1d_4/conv1d/ExpandDims/dim?
conv1d_4/conv1d/ExpandDims
ExpandDimsconv1d_4/Pad:output:0'conv1d_4/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????2
conv1d_4/conv1d/ExpandDims?
+conv1d_4/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_4_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype02-
+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp?
 conv1d_4/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_4/conv1d/ExpandDims_1/dim?
conv1d_4/conv1d/ExpandDims_1
ExpandDims3conv1d_4/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_4/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 2
conv1d_4/conv1d/ExpandDims_1?
conv1d_4/conv1dConv2D#conv1d_4/conv1d/ExpandDims:output:0%conv1d_4/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
conv1d_4/conv1d?
conv1d_4/conv1d/SqueezeSqueezeconv1d_4/conv1d:output:0*
T0*+
_output_shapes
:????????? *
squeeze_dims

?????????2
conv1d_4/conv1d/Squeeze?
conv1d_4/BiasAdd/ReadVariableOpReadVariableOp(conv1d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv1d_4/BiasAdd/ReadVariableOp?
conv1d_4/BiasAddBiasAdd conv1d_4/conv1d/Squeeze:output:0'conv1d_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? 2
conv1d_4/BiasAddw
conv1d_4/ReluReluconv1d_4/BiasAdd:output:0*
T0*+
_output_shapes
:????????? 2
conv1d_4/Relu?
conv1d_5/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       2
conv1d_5/Pad/paddings?
conv1d_5/PadPadlambda_18/ExpandDims:output:0conv1d_5/Pad/paddings:output:0*
T0*+
_output_shapes
:?????????	2
conv1d_5/Pad?
conv1d_5/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
conv1d_5/conv1d/ExpandDims/dim?
conv1d_5/conv1d/ExpandDims
ExpandDimsconv1d_5/Pad:output:0'conv1d_5/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????	2
conv1d_5/conv1d/ExpandDims?
+conv1d_5/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_5_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	 *
dtype02-
+conv1d_5/conv1d/ExpandDims_1/ReadVariableOp?
 conv1d_5/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_5/conv1d/ExpandDims_1/dim?
conv1d_5/conv1d/ExpandDims_1
ExpandDims3conv1d_5/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_5/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:	 2
conv1d_5/conv1d/ExpandDims_1?
conv1d_5/conv1dConv2D#conv1d_5/conv1d/ExpandDims:output:0%conv1d_5/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
conv1d_5/conv1d?
conv1d_5/conv1d/SqueezeSqueezeconv1d_5/conv1d:output:0*
T0*+
_output_shapes
:????????? *
squeeze_dims

?????????2
conv1d_5/conv1d/Squeeze?
conv1d_5/BiasAdd/ReadVariableOpReadVariableOp(conv1d_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv1d_5/BiasAdd/ReadVariableOp?
conv1d_5/BiasAddBiasAdd conv1d_5/conv1d/Squeeze:output:0'conv1d_5/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? 2
conv1d_5/BiasAddw
conv1d_5/ReluReluconv1d_5/BiasAdd:output:0*
T0*+
_output_shapes
:????????? 2
conv1d_5/Relu?
dense_96/CastCastlambda_19/ExpandDims:output:0*

DstT0*

SrcT0*+
_output_shapes
:?????????2
dense_96/Cast?
!dense_96/Tensordot/ReadVariableOpReadVariableOp*dense_96_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!dense_96/Tensordot/ReadVariableOp|
dense_96/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_96/Tensordot/axes?
dense_96/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_96/Tensordot/freeu
dense_96/Tensordot/ShapeShapedense_96/Cast:y:0*
T0*
_output_shapes
:2
dense_96/Tensordot/Shape?
 dense_96/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_96/Tensordot/GatherV2/axis?
dense_96/Tensordot/GatherV2GatherV2!dense_96/Tensordot/Shape:output:0 dense_96/Tensordot/free:output:0)dense_96/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_96/Tensordot/GatherV2?
"dense_96/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_96/Tensordot/GatherV2_1/axis?
dense_96/Tensordot/GatherV2_1GatherV2!dense_96/Tensordot/Shape:output:0 dense_96/Tensordot/axes:output:0+dense_96/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_96/Tensordot/GatherV2_1~
dense_96/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_96/Tensordot/Const?
dense_96/Tensordot/ProdProd$dense_96/Tensordot/GatherV2:output:0!dense_96/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_96/Tensordot/Prod?
dense_96/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_96/Tensordot/Const_1?
dense_96/Tensordot/Prod_1Prod&dense_96/Tensordot/GatherV2_1:output:0#dense_96/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_96/Tensordot/Prod_1?
dense_96/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_96/Tensordot/concat/axis?
dense_96/Tensordot/concatConcatV2 dense_96/Tensordot/free:output:0 dense_96/Tensordot/axes:output:0'dense_96/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_96/Tensordot/concat?
dense_96/Tensordot/stackPack dense_96/Tensordot/Prod:output:0"dense_96/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_96/Tensordot/stack?
dense_96/Tensordot/transpose	Transposedense_96/Cast:y:0"dense_96/Tensordot/concat:output:0*
T0*+
_output_shapes
:?????????2
dense_96/Tensordot/transpose?
dense_96/Tensordot/ReshapeReshape dense_96/Tensordot/transpose:y:0!dense_96/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_96/Tensordot/Reshape?
dense_96/Tensordot/MatMulMatMul#dense_96/Tensordot/Reshape:output:0)dense_96/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_96/Tensordot/MatMul?
dense_96/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
dense_96/Tensordot/Const_2?
 dense_96/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_96/Tensordot/concat_1/axis?
dense_96/Tensordot/concat_1ConcatV2$dense_96/Tensordot/GatherV2:output:0#dense_96/Tensordot/Const_2:output:0)dense_96/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_96/Tensordot/concat_1?
dense_96/TensordotReshape#dense_96/Tensordot/MatMul:product:0$dense_96/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2
dense_96/Tensordot?
dense_96/BiasAdd/ReadVariableOpReadVariableOp(dense_96_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_96/BiasAdd/ReadVariableOp?
dense_96/BiasAddBiasAdddense_96/Tensordot:output:0'dense_96/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2
dense_96/BiasAddx
dense_96/ReluReludense_96/BiasAdd:output:0*
T0*,
_output_shapes
:??????????2
dense_96/Relu~
Combined_outputs/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
Combined_outputs/concat/axis?
Combined_outputs/concatConcatV2conv1d_4/Relu:activations:0conv1d_5/Relu:activations:0dense_96/Relu:activations:0%Combined_outputs/concat/axis:output:0*
N*
T0*,
_output_shapes
:??????????2
Combined_outputs/concat?
dropout_1/IdentityIdentity Combined_outputs/concat:output:0*
T0*,
_output_shapes
:??????????2
dropout_1/Identity?
!dense_97/Tensordot/ReadVariableOpReadVariableOp*dense_97_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!dense_97/Tensordot/ReadVariableOp|
dense_97/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_97/Tensordot/axes?
dense_97/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_97/Tensordot/free
dense_97/Tensordot/ShapeShapedropout_1/Identity:output:0*
T0*
_output_shapes
:2
dense_97/Tensordot/Shape?
 dense_97/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_97/Tensordot/GatherV2/axis?
dense_97/Tensordot/GatherV2GatherV2!dense_97/Tensordot/Shape:output:0 dense_97/Tensordot/free:output:0)dense_97/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_97/Tensordot/GatherV2?
"dense_97/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"dense_97/Tensordot/GatherV2_1/axis?
dense_97/Tensordot/GatherV2_1GatherV2!dense_97/Tensordot/Shape:output:0 dense_97/Tensordot/axes:output:0+dense_97/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_97/Tensordot/GatherV2_1~
dense_97/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_97/Tensordot/Const?
dense_97/Tensordot/ProdProd$dense_97/Tensordot/GatherV2:output:0!dense_97/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_97/Tensordot/Prod?
dense_97/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_97/Tensordot/Const_1?
dense_97/Tensordot/Prod_1Prod&dense_97/Tensordot/GatherV2_1:output:0#dense_97/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_97/Tensordot/Prod_1?
dense_97/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
dense_97/Tensordot/concat/axis?
dense_97/Tensordot/concatConcatV2 dense_97/Tensordot/free:output:0 dense_97/Tensordot/axes:output:0'dense_97/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_97/Tensordot/concat?
dense_97/Tensordot/stackPack dense_97/Tensordot/Prod:output:0"dense_97/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_97/Tensordot/stack?
dense_97/Tensordot/transpose	Transposedropout_1/Identity:output:0"dense_97/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????2
dense_97/Tensordot/transpose?
dense_97/Tensordot/ReshapeReshape dense_97/Tensordot/transpose:y:0!dense_97/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_97/Tensordot/Reshape?
dense_97/Tensordot/MatMulMatMul#dense_97/Tensordot/Reshape:output:0)dense_97/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_97/Tensordot/MatMul?
dense_97/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense_97/Tensordot/Const_2?
 dense_97/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 dense_97/Tensordot/concat_1/axis?
dense_97/Tensordot/concat_1ConcatV2$dense_97/Tensordot/GatherV2:output:0#dense_97/Tensordot/Const_2:output:0)dense_97/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_97/Tensordot/concat_1?
dense_97/TensordotReshape#dense_97/Tensordot/MatMul:product:0$dense_97/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????2
dense_97/Tensordot?
dense_97/BiasAdd/ReadVariableOpReadVariableOp(dense_97_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_97/BiasAdd/ReadVariableOp?
dense_97/BiasAddBiasAdddense_97/Tensordot:output:0'dense_97/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2
dense_97/BiasAddx
IdentityIdentitydense_97/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp ^conv1d_4/BiasAdd/ReadVariableOp,^conv1d_4/conv1d/ExpandDims_1/ReadVariableOp ^conv1d_5/BiasAdd/ReadVariableOp,^conv1d_5/conv1d/ExpandDims_1/ReadVariableOp ^dense_96/BiasAdd/ReadVariableOp"^dense_96/Tensordot/ReadVariableOp ^dense_97/BiasAdd/ReadVariableOp"^dense_97/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:?????????:?????????	:?????????: : : : : : : : 2B
conv1d_4/BiasAdd/ReadVariableOpconv1d_4/BiasAdd/ReadVariableOp2Z
+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp2B
conv1d_5/BiasAdd/ReadVariableOpconv1d_5/BiasAdd/ReadVariableOp2Z
+conv1d_5/conv1d/ExpandDims_1/ReadVariableOp+conv1d_5/conv1d/ExpandDims_1/ReadVariableOp2B
dense_96/BiasAdd/ReadVariableOpdense_96/BiasAdd/ReadVariableOp2F
!dense_96/Tensordot/ReadVariableOp!dense_96/Tensordot/ReadVariableOp2B
dense_97/BiasAdd/ReadVariableOpdense_97/BiasAdd/ReadVariableOp2F
!dense_97/Tensordot/ReadVariableOp!dense_97/Tensordot/ReadVariableOp:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????	
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2
?
?
E__inference_conv1d_5_layer_call_and_return_conditional_losses_3093708

inputsA
+conv1d_expanddims_1_readvariableop_resource:	 -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOp?
Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       2
Pad/paddingsf
PadPadinputsPad/paddings:output:0*
T0*+
_output_shapes
:?????????	2
Pady
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsPad:output:0conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????	2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	 *
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:	 2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:????????? *
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? 2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:????????? 2
Reluq
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:????????? 2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
b
F__inference_lambda_17_layer_call_and_return_conditional_losses_3094419

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim}

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2

ExpandDimsk
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
G
+__inference_lambda_19_layer_call_fn_3094446

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_lambda_19_layer_call_and_return_conditional_losses_30936462
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
b
F__inference_lambda_18_layer_call_and_return_conditional_losses_3093927

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim}

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????	2

ExpandDimsk
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????	:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
b
F__inference_lambda_17_layer_call_and_return_conditional_losses_3094413

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim}

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2

ExpandDimsk
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_tribrid_model_layer_call_fn_3094049
window_inputs
block_rewards_inputs

days_input
unknown: 
	unknown_0: 
	unknown_1:	 
	unknown_2: 
	unknown_3:	?
	unknown_4:	?
	unknown_5:	?
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallwindow_inputsblock_rewards_inputs
days_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_tribrid_model_layer_call_and_return_conditional_losses_30940072
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:?????????:?????????	:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:?????????
'
_user_specified_namewindow_inputs:]Y
'
_output_shapes
:?????????	
.
_user_specified_nameblock_rewards_inputs:SO
'
_output_shapes
:?????????
$
_user_specified_name
days_input
?
?
M__inference_Combined_outputs_layer_call_and_return_conditional_losses_3093760

inputs
inputs_1
inputs_2
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputsinputs_1inputs_2concat/axis:output:0*
N*
T0*,
_output_shapes
:??????????2
concath
IdentityIdentityconcat:output:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:????????? :????????? :??????????:S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs:SO
+
_output_shapes
:????????? 
 
_user_specified_nameinputs:TP
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?,
?
J__inference_tribrid_model_layer_call_and_return_conditional_losses_3094082
window_inputs
block_rewards_inputs

days_input&
conv1d_4_3094059: 
conv1d_4_3094061: &
conv1d_5_3094064:	 
conv1d_5_3094066: #
dense_96_3094069:	?
dense_96_3094071:	?#
dense_97_3094076:	?
dense_97_3094078:
identity?? conv1d_4/StatefulPartitionedCall? conv1d_5/StatefulPartitionedCall? dense_96/StatefulPartitionedCall? dense_97/StatefulPartitionedCall?
lambda_19/PartitionedCallPartitionedCall
days_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_lambda_19_layer_call_and_return_conditional_losses_30936462
lambda_19/PartitionedCall
lambda_18/CastCastblock_rewards_inputs*

DstT0*

SrcT0*'
_output_shapes
:?????????	2
lambda_18/Cast?
lambda_18/PartitionedCallPartitionedCalllambda_18/Cast:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_lambda_18_layer_call_and_return_conditional_losses_30936552
lambda_18/PartitionedCallx
lambda_17/CastCastwindow_inputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
lambda_17/Cast?
lambda_17/PartitionedCallPartitionedCalllambda_17/Cast:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_lambda_17_layer_call_and_return_conditional_losses_30936642
lambda_17/PartitionedCall?
 conv1d_4/StatefulPartitionedCallStatefulPartitionedCall"lambda_17/PartitionedCall:output:0conv1d_4_3094059conv1d_4_3094061*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv1d_4_layer_call_and_return_conditional_losses_30936842"
 conv1d_4/StatefulPartitionedCall?
 conv1d_5/StatefulPartitionedCallStatefulPartitionedCall"lambda_18/PartitionedCall:output:0conv1d_5_3094064conv1d_5_3094066*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv1d_5_layer_call_and_return_conditional_losses_30937082"
 conv1d_5/StatefulPartitionedCall?
 dense_96/StatefulPartitionedCallStatefulPartitionedCall"lambda_19/PartitionedCall:output:0dense_96_3094069dense_96_3094071*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_96_layer_call_and_return_conditional_losses_30937462"
 dense_96/StatefulPartitionedCall?
 Combined_outputs/PartitionedCallPartitionedCall)conv1d_4/StatefulPartitionedCall:output:0)conv1d_5/StatefulPartitionedCall:output:0)dense_96/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_Combined_outputs_layer_call_and_return_conditional_losses_30937602"
 Combined_outputs/PartitionedCall?
dropout_1/PartitionedCallPartitionedCall)Combined_outputs/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_30937672
dropout_1/PartitionedCall?
 dense_97/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_97_3094076dense_97_3094078*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_97_layer_call_and_return_conditional_losses_30937992"
 dense_97/StatefulPartitionedCall?
IdentityIdentity)dense_97/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identity?
NoOpNoOp!^conv1d_4/StatefulPartitionedCall!^conv1d_5/StatefulPartitionedCall!^dense_96/StatefulPartitionedCall!^dense_97/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:?????????:?????????	:?????????: : : : : : : : 2D
 conv1d_4/StatefulPartitionedCall conv1d_4/StatefulPartitionedCall2D
 conv1d_5/StatefulPartitionedCall conv1d_5/StatefulPartitionedCall2D
 dense_96/StatefulPartitionedCall dense_96/StatefulPartitionedCall2D
 dense_97/StatefulPartitionedCall dense_97/StatefulPartitionedCall:V R
'
_output_shapes
:?????????
'
_user_specified_namewindow_inputs:]Y
'
_output_shapes
:?????????	
.
_user_specified_nameblock_rewards_inputs:SO
'
_output_shapes
:?????????
$
_user_specified_name
days_input
?H
?
 __inference__traced_save_3094763
file_prefix.
*savev2_conv1d_4_kernel_read_readvariableop,
(savev2_conv1d_4_bias_read_readvariableop.
*savev2_conv1d_5_kernel_read_readvariableop,
(savev2_conv1d_5_bias_read_readvariableop.
*savev2_dense_96_kernel_read_readvariableop,
(savev2_dense_96_bias_read_readvariableop.
*savev2_dense_97_kernel_read_readvariableop,
(savev2_dense_97_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_conv1d_4_kernel_m_read_readvariableop3
/savev2_adam_conv1d_4_bias_m_read_readvariableop5
1savev2_adam_conv1d_5_kernel_m_read_readvariableop3
/savev2_adam_conv1d_5_bias_m_read_readvariableop5
1savev2_adam_dense_96_kernel_m_read_readvariableop3
/savev2_adam_dense_96_bias_m_read_readvariableop5
1savev2_adam_dense_97_kernel_m_read_readvariableop3
/savev2_adam_dense_97_bias_m_read_readvariableop5
1savev2_adam_conv1d_4_kernel_v_read_readvariableop3
/savev2_adam_conv1d_4_bias_v_read_readvariableop5
1savev2_adam_conv1d_5_kernel_v_read_readvariableop3
/savev2_adam_conv1d_5_bias_v_read_readvariableop5
1savev2_adam_dense_96_kernel_v_read_readvariableop3
/savev2_adam_dense_96_bias_v_read_readvariableop5
1savev2_adam_dense_97_kernel_v_read_readvariableop3
/savev2_adam_dense_97_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
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
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
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
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*?
value?B?"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv1d_4_kernel_read_readvariableop(savev2_conv1d_4_bias_read_readvariableop*savev2_conv1d_5_kernel_read_readvariableop(savev2_conv1d_5_bias_read_readvariableop*savev2_dense_96_kernel_read_readvariableop(savev2_dense_96_bias_read_readvariableop*savev2_dense_97_kernel_read_readvariableop(savev2_dense_97_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_conv1d_4_kernel_m_read_readvariableop/savev2_adam_conv1d_4_bias_m_read_readvariableop1savev2_adam_conv1d_5_kernel_m_read_readvariableop/savev2_adam_conv1d_5_bias_m_read_readvariableop1savev2_adam_dense_96_kernel_m_read_readvariableop/savev2_adam_dense_96_bias_m_read_readvariableop1savev2_adam_dense_97_kernel_m_read_readvariableop/savev2_adam_dense_97_bias_m_read_readvariableop1savev2_adam_conv1d_4_kernel_v_read_readvariableop/savev2_adam_conv1d_4_bias_v_read_readvariableop1savev2_adam_conv1d_5_kernel_v_read_readvariableop/savev2_adam_conv1d_5_bias_v_read_readvariableop1savev2_adam_dense_96_kernel_v_read_readvariableop/savev2_adam_dense_96_bias_v_read_readvariableop1savev2_adam_dense_97_kernel_v_read_readvariableop/savev2_adam_dense_97_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : :	 : :	?:?:	?:: : : : : : : : : : : :	 : :	?:?:	?:: : :	 : :	?:?:	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:($
"
_output_shapes
: : 

_output_shapes
: :($
"
_output_shapes
:	 : 

_output_shapes
: :%!

_output_shapes
:	?:!

_output_shapes	
:?:%!

_output_shapes
:	?: 
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
: :($
"
_output_shapes
: : 

_output_shapes
: :($
"
_output_shapes
:	 : 

_output_shapes
: :%!

_output_shapes
:	?:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::($
"
_output_shapes
: : 

_output_shapes
: :($
"
_output_shapes
:	 : 

_output_shapes
: :%!

_output_shapes
:	?:!

_output_shapes	
:?:% !

_output_shapes
:	?: !

_output_shapes
::"

_output_shapes
: 
?
?
*__inference_dense_97_layer_call_fn_3094609

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_97_layer_call_and_return_conditional_losses_30937992
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
l
2__inference_Combined_outputs_layer_call_fn_3094565
inputs_0
inputs_1
inputs_2
identity?
PartitionedCallPartitionedCallinputs_0inputs_1inputs_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_Combined_outputs_layer_call_and_return_conditional_losses_30937602
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:????????? :????????? :??????????:U Q
+
_output_shapes
:????????? 
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:????????? 
"
_user_specified_name
inputs/1:VR
,
_output_shapes
:??????????
"
_user_specified_name
inputs/2
?
?
*__inference_conv1d_5_layer_call_fn_3094499

inputs
unknown:	 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv1d_5_layer_call_and_return_conditional_losses_30937082
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????	: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
b
F__inference_lambda_17_layer_call_and_return_conditional_losses_3093664

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim}

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2

ExpandDimsk
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
b
F__inference_lambda_18_layer_call_and_return_conditional_losses_3094435

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim}

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????	2

ExpandDimsk
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????	:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
b
F__inference_lambda_18_layer_call_and_return_conditional_losses_3093655

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim}

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????	2

ExpandDimsk
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????	:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
U
block_rewards_inputs=
&serving_default_block_rewards_inputs:0?????????	
A

days_input3
serving_default_days_input:0?????????
G
window_inputs6
serving_default_window_inputs:0?????????@
dense_974
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer_with_weights-0
layer-6
layer_with_weights-1
layer-7
	layer_with_weights-2
	layer-8

layer-9
layer-10
layer_with_weights-3
layer-11
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
?_default_save_signature
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
 bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

%kernel
&bias
'	variables
(trainable_variables
)regularization_losses
*	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

+kernel
,bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
1	variables
2trainable_variables
3regularization_losses
4	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
5	variables
6trainable_variables
7regularization_losses
8	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

9kernel
:bias
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?iter

@beta_1

Abeta_2
	Bdecay
Clearning_ratem? m?%m?&m?+m?,m?9m?:m?v? v?%v?&v?+v?,v?9v?:v?"
	optimizer
X
0
 1
%2
&3
+4
,5
96
:7"
trackable_list_wrapper
X
0
 1
%2
&3
+4
,5
96
:7"
trackable_list_wrapper
 "
trackable_list_wrapper
?
	variables
trainable_variables
Dlayer_metrics
regularization_losses
Elayer_regularization_losses
Fnon_trainable_variables

Glayers
Hmetrics
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
	variables
trainable_variables
regularization_losses
Inon_trainable_variables
Jlayer_regularization_losses
Klayer_metrics

Llayers
Mmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
	variables
trainable_variables
regularization_losses
Nnon_trainable_variables
Olayer_regularization_losses
Player_metrics

Qlayers
Rmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
	variables
trainable_variables
regularization_losses
Snon_trainable_variables
Tlayer_regularization_losses
Ulayer_metrics

Vlayers
Wmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
%:# 2conv1d_4/kernel
: 2conv1d_4/bias
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
!	variables
"trainable_variables
#regularization_losses
Xnon_trainable_variables
Ylayer_regularization_losses
Zlayer_metrics

[layers
\metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
%:#	 2conv1d_5/kernel
: 2conv1d_5/bias
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
'	variables
(trainable_variables
)regularization_losses
]non_trainable_variables
^layer_regularization_losses
_layer_metrics

`layers
ametrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 	?2dense_96/kernel
:?2dense_96/bias
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
-	variables
.trainable_variables
/regularization_losses
bnon_trainable_variables
clayer_regularization_losses
dlayer_metrics

elayers
fmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
1	variables
2trainable_variables
3regularization_losses
gnon_trainable_variables
hlayer_regularization_losses
ilayer_metrics

jlayers
kmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
5	variables
6trainable_variables
7regularization_losses
lnon_trainable_variables
mlayer_regularization_losses
nlayer_metrics

olayers
pmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 	?2dense_97/kernel
:2dense_97/bias
.
90
:1"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
;	variables
<trainable_variables
=regularization_losses
qnon_trainable_variables
rlayer_regularization_losses
slayer_metrics

tlayers
umetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
v
0
1
2
3
4
5
6
7
	8

9
10
11"
trackable_list_wrapper
.
v0
w1"
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
N
	xtotal
	ycount
z	variables
{	keras_api"
_tf_keras_metric
_
	|total
	}count
~
_fn_kwargs
	variables
?	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
x0
y1"
trackable_list_wrapper
-
z	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
|0
}1"
trackable_list_wrapper
-
	variables"
_generic_user_object
*:( 2Adam/conv1d_4/kernel/m
 : 2Adam/conv1d_4/bias/m
*:(	 2Adam/conv1d_5/kernel/m
 : 2Adam/conv1d_5/bias/m
':%	?2Adam/dense_96/kernel/m
!:?2Adam/dense_96/bias/m
':%	?2Adam/dense_97/kernel/m
 :2Adam/dense_97/bias/m
*:( 2Adam/conv1d_4/kernel/v
 : 2Adam/conv1d_4/bias/v
*:(	 2Adam/conv1d_5/kernel/v
 : 2Adam/conv1d_5/bias/v
':%	?2Adam/dense_96/kernel/v
!:?2Adam/dense_96/bias/v
':%	?2Adam/dense_97/kernel/v
 :2Adam/dense_97/bias/v
?B?
"__inference__wrapped_model_3093629window_inputsblock_rewards_inputs
days_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_tribrid_model_layer_call_fn_3093825
/__inference_tribrid_model_layer_call_fn_3094169
/__inference_tribrid_model_layer_call_fn_3094192
/__inference_tribrid_model_layer_call_fn_3094049?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
J__inference_tribrid_model_layer_call_and_return_conditional_losses_3094291
J__inference_tribrid_model_layer_call_and_return_conditional_losses_3094397
J__inference_tribrid_model_layer_call_and_return_conditional_losses_3094082
J__inference_tribrid_model_layer_call_and_return_conditional_losses_3094115?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_lambda_17_layer_call_fn_3094402
+__inference_lambda_17_layer_call_fn_3094407?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_lambda_17_layer_call_and_return_conditional_losses_3094413
F__inference_lambda_17_layer_call_and_return_conditional_losses_3094419?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_lambda_18_layer_call_fn_3094424
+__inference_lambda_18_layer_call_fn_3094429?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_lambda_18_layer_call_and_return_conditional_losses_3094435
F__inference_lambda_18_layer_call_and_return_conditional_losses_3094441?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_lambda_19_layer_call_fn_3094446
+__inference_lambda_19_layer_call_fn_3094451?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_lambda_19_layer_call_and_return_conditional_losses_3094457
F__inference_lambda_19_layer_call_and_return_conditional_losses_3094463?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_conv1d_4_layer_call_fn_3094472?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_conv1d_4_layer_call_and_return_conditional_losses_3094490?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_conv1d_5_layer_call_fn_3094499?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_conv1d_5_layer_call_and_return_conditional_losses_3094517?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_96_layer_call_fn_3094526?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_96_layer_call_and_return_conditional_losses_3094558?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
2__inference_Combined_outputs_layer_call_fn_3094565?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
M__inference_Combined_outputs_layer_call_and_return_conditional_losses_3094573?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_dropout_1_layer_call_fn_3094578
+__inference_dropout_1_layer_call_fn_3094583?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_dropout_1_layer_call_and_return_conditional_losses_3094588
F__inference_dropout_1_layer_call_and_return_conditional_losses_3094600?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_dense_97_layer_call_fn_3094609?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_97_layer_call_and_return_conditional_losses_3094639?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
%__inference_signature_wrapper_3094146block_rewards_inputs
days_inputwindow_inputs"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
M__inference_Combined_outputs_layer_call_and_return_conditional_losses_3094573????
??~
|?y
&?#
inputs/0????????? 
&?#
inputs/1????????? 
'?$
inputs/2??????????
? "*?'
 ?
0??????????
? ?
2__inference_Combined_outputs_layer_call_fn_3094565????
??~
|?y
&?#
inputs/0????????? 
&?#
inputs/1????????? 
'?$
inputs/2??????????
? "????????????
"__inference__wrapped_model_3093629? %&+,9:???
???
??
'?$
window_inputs?????????
.?+
block_rewards_inputs?????????	
$?!

days_input?????????
? "7?4
2
dense_97&?#
dense_97??????????
E__inference_conv1d_4_layer_call_and_return_conditional_losses_3094490d 3?0
)?&
$?!
inputs?????????
? ")?&
?
0????????? 
? ?
*__inference_conv1d_4_layer_call_fn_3094472W 3?0
)?&
$?!
inputs?????????
? "?????????? ?
E__inference_conv1d_5_layer_call_and_return_conditional_losses_3094517d%&3?0
)?&
$?!
inputs?????????	
? ")?&
?
0????????? 
? ?
*__inference_conv1d_5_layer_call_fn_3094499W%&3?0
)?&
$?!
inputs?????????	
? "?????????? ?
E__inference_dense_96_layer_call_and_return_conditional_losses_3094558e+,3?0
)?&
$?!
inputs?????????
? "*?'
 ?
0??????????
? ?
*__inference_dense_96_layer_call_fn_3094526X+,3?0
)?&
$?!
inputs?????????
? "????????????
E__inference_dense_97_layer_call_and_return_conditional_losses_3094639e9:4?1
*?'
%?"
inputs??????????
? ")?&
?
0?????????
? ?
*__inference_dense_97_layer_call_fn_3094609X9:4?1
*?'
%?"
inputs??????????
? "???????????
F__inference_dropout_1_layer_call_and_return_conditional_losses_3094588f8?5
.?+
%?"
inputs??????????
p 
? "*?'
 ?
0??????????
? ?
F__inference_dropout_1_layer_call_and_return_conditional_losses_3094600f8?5
.?+
%?"
inputs??????????
p
? "*?'
 ?
0??????????
? ?
+__inference_dropout_1_layer_call_fn_3094578Y8?5
.?+
%?"
inputs??????????
p 
? "????????????
+__inference_dropout_1_layer_call_fn_3094583Y8?5
.?+
%?"
inputs??????????
p
? "????????????
F__inference_lambda_17_layer_call_and_return_conditional_losses_3094413d7?4
-?*
 ?
inputs?????????

 
p 
? ")?&
?
0?????????
? ?
F__inference_lambda_17_layer_call_and_return_conditional_losses_3094419d7?4
-?*
 ?
inputs?????????

 
p
? ")?&
?
0?????????
? ?
+__inference_lambda_17_layer_call_fn_3094402W7?4
-?*
 ?
inputs?????????

 
p 
? "???????????
+__inference_lambda_17_layer_call_fn_3094407W7?4
-?*
 ?
inputs?????????

 
p
? "???????????
F__inference_lambda_18_layer_call_and_return_conditional_losses_3094435d7?4
-?*
 ?
inputs?????????	

 
p 
? ")?&
?
0?????????	
? ?
F__inference_lambda_18_layer_call_and_return_conditional_losses_3094441d7?4
-?*
 ?
inputs?????????	

 
p
? ")?&
?
0?????????	
? ?
+__inference_lambda_18_layer_call_fn_3094424W7?4
-?*
 ?
inputs?????????	

 
p 
? "??????????	?
+__inference_lambda_18_layer_call_fn_3094429W7?4
-?*
 ?
inputs?????????	

 
p
? "??????????	?
F__inference_lambda_19_layer_call_and_return_conditional_losses_3094457d7?4
-?*
 ?
inputs?????????

 
p 
? ")?&
?
0?????????
? ?
F__inference_lambda_19_layer_call_and_return_conditional_losses_3094463d7?4
-?*
 ?
inputs?????????

 
p
? ")?&
?
0?????????
? ?
+__inference_lambda_19_layer_call_fn_3094446W7?4
-?*
 ?
inputs?????????

 
p 
? "???????????
+__inference_lambda_19_layer_call_fn_3094451W7?4
-?*
 ?
inputs?????????

 
p
? "???????????
%__inference_signature_wrapper_3094146? %&+,9:???
? 
???
F
block_rewards_inputs.?+
block_rewards_inputs?????????	
2

days_input$?!

days_input?????????
8
window_inputs'?$
window_inputs?????????"7?4
2
dense_97&?#
dense_97??????????
J__inference_tribrid_model_layer_call_and_return_conditional_losses_3094082? %&+,9:???
???
??
'?$
window_inputs?????????
.?+
block_rewards_inputs?????????	
$?!

days_input?????????
p 

 
? ")?&
?
0?????????
? ?
J__inference_tribrid_model_layer_call_and_return_conditional_losses_3094115? %&+,9:???
???
??
'?$
window_inputs?????????
.?+
block_rewards_inputs?????????	
$?!

days_input?????????
p

 
? ")?&
?
0?????????
? ?
J__inference_tribrid_model_layer_call_and_return_conditional_losses_3094291? %&+,9:???
|?y
o?l
"?
inputs/0?????????
"?
inputs/1?????????	
"?
inputs/2?????????
p 

 
? ")?&
?
0?????????
? ?
J__inference_tribrid_model_layer_call_and_return_conditional_losses_3094397? %&+,9:???
|?y
o?l
"?
inputs/0?????????
"?
inputs/1?????????	
"?
inputs/2?????????
p

 
? ")?&
?
0?????????
? ?
/__inference_tribrid_model_layer_call_fn_3093825? %&+,9:???
???
??
'?$
window_inputs?????????
.?+
block_rewards_inputs?????????	
$?!

days_input?????????
p 

 
? "???????????
/__inference_tribrid_model_layer_call_fn_3094049? %&+,9:???
???
??
'?$
window_inputs?????????
.?+
block_rewards_inputs?????????	
$?!

days_input?????????
p

 
? "???????????
/__inference_tribrid_model_layer_call_fn_3094169? %&+,9:???
|?y
o?l
"?
inputs/0?????????
"?
inputs/1?????????	
"?
inputs/2?????????
p 

 
? "???????????
/__inference_tribrid_model_layer_call_fn_3094192? %&+,9:???
|?y
o?l
"?
inputs/0?????????
"?
inputs/1?????????	
"?
inputs/2?????????
p

 
? "??????????