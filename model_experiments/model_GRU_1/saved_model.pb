??
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
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
8
Const
output"dtype"
valuetensor"
dtypetype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
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
?
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
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
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
?
SplitV

value"T
size_splits"Tlen
	split_dim
output"T*	num_split"
	num_splitint(0"	
Ttype"
Tlentype0	:
2	
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
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements#
handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
?
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
?"serve*2.6.02unknown8??
|
dense_73/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_73/kernel
u
#dense_73/kernel/Read/ReadVariableOpReadVariableOpdense_73/kernel* 
_output_shapes
:
??*
dtype0
s
dense_73/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_73/bias
l
!dense_73/bias/Read/ReadVariableOpReadVariableOpdense_73/bias*
_output_shapes	
:?*
dtype0
{
dense_74/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?* 
shared_namedense_74/kernel
t
#dense_74/kernel/Read/ReadVariableOpReadVariableOpdense_74/kernel*
_output_shapes
:	?*
dtype0
r
dense_74/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_74/bias
k
!dense_74/bias/Read/ReadVariableOpReadVariableOpdense_74/bias*
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
?
gru_6/gru_cell_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*(
shared_namegru_6/gru_cell_9/kernel
?
+gru_6/gru_cell_9/kernel/Read/ReadVariableOpReadVariableOpgru_6/gru_cell_9/kernel*
_output_shapes
:	?*
dtype0
?
!gru_6/gru_cell_9/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*2
shared_name#!gru_6/gru_cell_9/recurrent_kernel
?
5gru_6/gru_cell_9/recurrent_kernel/Read/ReadVariableOpReadVariableOp!gru_6/gru_cell_9/recurrent_kernel* 
_output_shapes
:
??*
dtype0
?
gru_6/gru_cell_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*&
shared_namegru_6/gru_cell_9/bias
?
)gru_6/gru_cell_9/bias/Read/ReadVariableOpReadVariableOpgru_6/gru_cell_9/bias*
_output_shapes
:	?*
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
Adam/dense_73/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_73/kernel/m
?
*Adam/dense_73/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_73/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_73/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_73/bias/m
z
(Adam/dense_73/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_73/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_74/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*'
shared_nameAdam/dense_74/kernel/m
?
*Adam/dense_74/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_74/kernel/m*
_output_shapes
:	?*
dtype0
?
Adam/dense_74/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_74/bias/m
y
(Adam/dense_74/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_74/bias/m*
_output_shapes
:*
dtype0
?
Adam/gru_6/gru_cell_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*/
shared_name Adam/gru_6/gru_cell_9/kernel/m
?
2Adam/gru_6/gru_cell_9/kernel/m/Read/ReadVariableOpReadVariableOpAdam/gru_6/gru_cell_9/kernel/m*
_output_shapes
:	?*
dtype0
?
(Adam/gru_6/gru_cell_9/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*9
shared_name*(Adam/gru_6/gru_cell_9/recurrent_kernel/m
?
<Adam/gru_6/gru_cell_9/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp(Adam/gru_6/gru_cell_9/recurrent_kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/gru_6/gru_cell_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*-
shared_nameAdam/gru_6/gru_cell_9/bias/m
?
0Adam/gru_6/gru_cell_9/bias/m/Read/ReadVariableOpReadVariableOpAdam/gru_6/gru_cell_9/bias/m*
_output_shapes
:	?*
dtype0
?
Adam/dense_73/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_73/kernel/v
?
*Adam/dense_73/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_73/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_73/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_73/bias/v
z
(Adam/dense_73/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_73/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_74/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*'
shared_nameAdam/dense_74/kernel/v
?
*Adam/dense_74/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_74/kernel/v*
_output_shapes
:	?*
dtype0
?
Adam/dense_74/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_74/bias/v
y
(Adam/dense_74/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_74/bias/v*
_output_shapes
:*
dtype0
?
Adam/gru_6/gru_cell_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*/
shared_name Adam/gru_6/gru_cell_9/kernel/v
?
2Adam/gru_6/gru_cell_9/kernel/v/Read/ReadVariableOpReadVariableOpAdam/gru_6/gru_cell_9/kernel/v*
_output_shapes
:	?*
dtype0
?
(Adam/gru_6/gru_cell_9/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*9
shared_name*(Adam/gru_6/gru_cell_9/recurrent_kernel/v
?
<Adam/gru_6/gru_cell_9/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp(Adam/gru_6/gru_cell_9/recurrent_kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/gru_6/gru_cell_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*-
shared_nameAdam/gru_6/gru_cell_9/bias/v
?
0Adam/gru_6/gru_cell_9/bias/v/Read/ReadVariableOpReadVariableOpAdam/gru_6/gru_cell_9/bias/v*
_output_shapes
:	?*
dtype0

NoOpNoOp
?-
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?,
value?,B?, B?,
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
R
	variables
trainable_variables
regularization_losses
	keras_api
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
 	keras_api
?
!iter

"beta_1

#beta_2
	$decay
%learning_ratemWmXmYmZ&m['m\(m]v^v_v`va&vb'vc(vd
1
&0
'1
(2
3
4
5
6
1
&0
'1
(2
3
4
5
6
 
?
	variables
trainable_variables
)layer_metrics
regularization_losses
*layer_regularization_losses
+non_trainable_variables

,layers
-metrics
 
 
 
 
?
	variables
trainable_variables
regularization_losses
.non_trainable_variables
/layer_regularization_losses
0layer_metrics

1layers
2metrics
~

&kernel
'recurrent_kernel
(bias
3	variables
4trainable_variables
5regularization_losses
6	keras_api
 

&0
'1
(2

&0
'1
(2
 
?
	variables
trainable_variables
7layer_metrics
regularization_losses
8layer_regularization_losses

9states
:non_trainable_variables

;layers
<metrics
[Y
VARIABLE_VALUEdense_73/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_73/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
	variables
trainable_variables
regularization_losses
=non_trainable_variables
>layer_regularization_losses
?layer_metrics

@layers
Ametrics
[Y
VARIABLE_VALUEdense_74/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_74/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
	variables
trainable_variables
regularization_losses
Bnon_trainable_variables
Clayer_regularization_losses
Dlayer_metrics

Elayers
Fmetrics
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
SQ
VARIABLE_VALUEgru_6/gru_cell_9/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUE!gru_6/gru_cell_9/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEgru_6/gru_cell_9/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
 
 
 

0
1
2
3

G0
H1
 
 
 
 
 

&0
'1
(2

&0
'1
(2
 
?
3	variables
4trainable_variables
5regularization_losses
Inon_trainable_variables
Jlayer_regularization_losses
Klayer_metrics

Llayers
Mmetrics
 
 
 
 

0
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
	Ntotal
	Ocount
P	variables
Q	keras_api
D
	Rtotal
	Scount
T
_fn_kwargs
U	variables
V	keras_api
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

N0
O1

P	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

R0
S1

U	variables
~|
VARIABLE_VALUEAdam/dense_73/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_73/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_74/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_74/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/gru_6/gru_cell_9/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUE(Adam/gru_6/gru_cell_9/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/gru_6/gru_cell_9/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_73/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_73/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_74/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_74/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/gru_6/gru_cell_9/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUE(Adam/gru_6/gru_cell_9/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/gru_6/gru_cell_9/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lambda_11_inputPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lambda_11_inputgru_6/gru_cell_9/biasgru_6/gru_cell_9/kernel!gru_6/gru_cell_9/recurrent_kerneldense_73/kerneldense_73/biasdense_74/kerneldense_74/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*)
_read_only_resource_inputs
	*0
config_proto 

CPU

GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_2359529
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_73/kernel/Read/ReadVariableOp!dense_73/bias/Read/ReadVariableOp#dense_74/kernel/Read/ReadVariableOp!dense_74/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp+gru_6/gru_cell_9/kernel/Read/ReadVariableOp5gru_6/gru_cell_9/recurrent_kernel/Read/ReadVariableOp)gru_6/gru_cell_9/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/dense_73/kernel/m/Read/ReadVariableOp(Adam/dense_73/bias/m/Read/ReadVariableOp*Adam/dense_74/kernel/m/Read/ReadVariableOp(Adam/dense_74/bias/m/Read/ReadVariableOp2Adam/gru_6/gru_cell_9/kernel/m/Read/ReadVariableOp<Adam/gru_6/gru_cell_9/recurrent_kernel/m/Read/ReadVariableOp0Adam/gru_6/gru_cell_9/bias/m/Read/ReadVariableOp*Adam/dense_73/kernel/v/Read/ReadVariableOp(Adam/dense_73/bias/v/Read/ReadVariableOp*Adam/dense_74/kernel/v/Read/ReadVariableOp(Adam/dense_74/bias/v/Read/ReadVariableOp2Adam/gru_6/gru_cell_9/kernel/v/Read/ReadVariableOp<Adam/gru_6/gru_cell_9/recurrent_kernel/v/Read/ReadVariableOp0Adam/gru_6/gru_cell_9/bias/v/Read/ReadVariableOpConst*+
Tin$
"2 	*
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
 __inference__traced_save_2360839
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_73/kerneldense_73/biasdense_74/kerneldense_74/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rategru_6/gru_cell_9/kernel!gru_6/gru_cell_9/recurrent_kernelgru_6/gru_cell_9/biastotalcounttotal_1count_1Adam/dense_73/kernel/mAdam/dense_73/bias/mAdam/dense_74/kernel/mAdam/dense_74/bias/mAdam/gru_6/gru_cell_9/kernel/m(Adam/gru_6/gru_cell_9/recurrent_kernel/mAdam/gru_6/gru_cell_9/bias/mAdam/dense_73/kernel/vAdam/dense_73/bias/vAdam/dense_74/kernel/vAdam/dense_74/bias/vAdam/gru_6/gru_cell_9/kernel/v(Adam/gru_6/gru_cell_9/recurrent_kernel/vAdam/gru_6/gru_cell_9/bias/v**
Tin#
!2*
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
#__inference__traced_restore_2360939??
?	
?
-__inference_model_GRU_1_layer_call_fn_2359548

inputs
unknown:	?
	unknown_0:	?
	unknown_1:
??
	unknown_2:
??
	unknown_3:	?
	unknown_4:	?
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*)
_read_only_resource_inputs
	*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_model_GRU_1_layer_call_and_return_conditional_losses_23591502
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?D
?
while_body_2359264
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
*while_gru_cell_9_readvariableop_resource_0:	?D
1while_gru_cell_9_matmul_readvariableop_resource_0:	?G
3while_gru_cell_9_matmul_1_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
(while_gru_cell_9_readvariableop_resource:	?B
/while_gru_cell_9_matmul_readvariableop_resource:	?E
1while_gru_cell_9_matmul_1_readvariableop_resource:
????&while/gru_cell_9/MatMul/ReadVariableOp?(while/gru_cell_9/MatMul_1/ReadVariableOp?while/gru_cell_9/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/gru_cell_9/ReadVariableOpReadVariableOp*while_gru_cell_9_readvariableop_resource_0*
_output_shapes
:	?*
dtype02!
while/gru_cell_9/ReadVariableOp?
while/gru_cell_9/unstackUnpack'while/gru_cell_9/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
while/gru_cell_9/unstack?
&while/gru_cell_9/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_9_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02(
&while/gru_cell_9/MatMul/ReadVariableOp?
while/gru_cell_9/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/MatMul?
while/gru_cell_9/BiasAddBiasAdd!while/gru_cell_9/MatMul:product:0!while/gru_cell_9/unstack:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/BiasAdd?
 while/gru_cell_9/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 while/gru_cell_9/split/split_dim?
while/gru_cell_9/splitSplit)while/gru_cell_9/split/split_dim:output:0!while/gru_cell_9/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/gru_cell_9/split?
(while/gru_cell_9/MatMul_1/ReadVariableOpReadVariableOp3while_gru_cell_9_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02*
(while/gru_cell_9/MatMul_1/ReadVariableOp?
while/gru_cell_9/MatMul_1MatMulwhile_placeholder_20while/gru_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/MatMul_1?
while/gru_cell_9/BiasAdd_1BiasAdd#while/gru_cell_9/MatMul_1:product:0!while/gru_cell_9/unstack:output:1*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/BiasAdd_1?
while/gru_cell_9/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
while/gru_cell_9/Const?
"while/gru_cell_9/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"while/gru_cell_9/split_1/split_dim?
while/gru_cell_9/split_1SplitV#while/gru_cell_9/BiasAdd_1:output:0while/gru_cell_9/Const:output:0+while/gru_cell_9/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/gru_cell_9/split_1?
while/gru_cell_9/addAddV2while/gru_cell_9/split:output:0!while/gru_cell_9/split_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/add?
while/gru_cell_9/SigmoidSigmoidwhile/gru_cell_9/add:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/Sigmoid?
while/gru_cell_9/add_1AddV2while/gru_cell_9/split:output:1!while/gru_cell_9/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/add_1?
while/gru_cell_9/Sigmoid_1Sigmoidwhile/gru_cell_9/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/Sigmoid_1?
while/gru_cell_9/mulMulwhile/gru_cell_9/Sigmoid_1:y:0!while/gru_cell_9/split_1:output:2*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/mul?
while/gru_cell_9/add_2AddV2while/gru_cell_9/split:output:2while/gru_cell_9/mul:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/add_2?
while/gru_cell_9/ReluReluwhile/gru_cell_9/add_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/Relu?
while/gru_cell_9/mul_1Mulwhile/gru_cell_9/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/mul_1u
while/gru_cell_9/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell_9/sub/x?
while/gru_cell_9/subSubwhile/gru_cell_9/sub/x:output:0while/gru_cell_9/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/sub?
while/gru_cell_9/mul_2Mulwhile/gru_cell_9/sub:z:0#while/gru_cell_9/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/mul_2?
while/gru_cell_9/add_3AddV2while/gru_cell_9/mul_1:z:0while/gru_cell_9/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_9/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell_9/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?

while/NoOpNoOp'^while/gru_cell_9/MatMul/ReadVariableOp)^while/gru_cell_9/MatMul_1/ReadVariableOp ^while/gru_cell_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"h
1while_gru_cell_9_matmul_1_readvariableop_resource3while_gru_cell_9_matmul_1_readvariableop_resource_0"d
/while_gru_cell_9_matmul_readvariableop_resource1while_gru_cell_9_matmul_readvariableop_resource_0"V
(while_gru_cell_9_readvariableop_resource*while_gru_cell_9_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2P
&while/gru_cell_9/MatMul/ReadVariableOp&while/gru_cell_9/MatMul/ReadVariableOp2T
(while/gru_cell_9/MatMul_1/ReadVariableOp(while/gru_cell_9/MatMul_1/ReadVariableOp2B
while/gru_cell_9/ReadVariableOpwhile/gru_cell_9/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?X
?
B__inference_gru_6_layer_call_and_return_conditional_losses_2359108

inputs5
"gru_cell_9_readvariableop_resource:	?<
)gru_cell_9_matmul_readvariableop_resource:	??
+gru_cell_9_matmul_1_readvariableop_resource:
??
identity?? gru_cell_9/MatMul/ReadVariableOp?"gru_cell_9/MatMul_1/ReadVariableOp?gru_cell_9/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicec
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
gru_cell_9/ReadVariableOpReadVariableOp"gru_cell_9_readvariableop_resource*
_output_shapes
:	?*
dtype02
gru_cell_9/ReadVariableOp?
gru_cell_9/unstackUnpack!gru_cell_9/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
gru_cell_9/unstack?
 gru_cell_9/MatMul/ReadVariableOpReadVariableOp)gru_cell_9_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02"
 gru_cell_9/MatMul/ReadVariableOp?
gru_cell_9/MatMulMatMulstrided_slice_2:output:0(gru_cell_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/MatMul?
gru_cell_9/BiasAddBiasAddgru_cell_9/MatMul:product:0gru_cell_9/unstack:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/BiasAdd?
gru_cell_9/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_9/split/split_dim?
gru_cell_9/splitSplit#gru_cell_9/split/split_dim:output:0gru_cell_9/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_cell_9/split?
"gru_cell_9/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_9_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02$
"gru_cell_9/MatMul_1/ReadVariableOp?
gru_cell_9/MatMul_1MatMulzeros:output:0*gru_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/MatMul_1?
gru_cell_9/BiasAdd_1BiasAddgru_cell_9/MatMul_1:product:0gru_cell_9/unstack:output:1*
T0*(
_output_shapes
:??????????2
gru_cell_9/BiasAdd_1y
gru_cell_9/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
gru_cell_9/Const?
gru_cell_9/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_9/split_1/split_dim?
gru_cell_9/split_1SplitVgru_cell_9/BiasAdd_1:output:0gru_cell_9/Const:output:0%gru_cell_9/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_cell_9/split_1?
gru_cell_9/addAddV2gru_cell_9/split:output:0gru_cell_9/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/addz
gru_cell_9/SigmoidSigmoidgru_cell_9/add:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/Sigmoid?
gru_cell_9/add_1AddV2gru_cell_9/split:output:1gru_cell_9/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_cell_9/add_1?
gru_cell_9/Sigmoid_1Sigmoidgru_cell_9/add_1:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/Sigmoid_1?
gru_cell_9/mulMulgru_cell_9/Sigmoid_1:y:0gru_cell_9/split_1:output:2*
T0*(
_output_shapes
:??????????2
gru_cell_9/mul?
gru_cell_9/add_2AddV2gru_cell_9/split:output:2gru_cell_9/mul:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/add_2s
gru_cell_9/ReluRelugru_cell_9/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/Relu?
gru_cell_9/mul_1Mulgru_cell_9/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/mul_1i
gru_cell_9/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_9/sub/x?
gru_cell_9/subSubgru_cell_9/sub/x:output:0gru_cell_9/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/sub?
gru_cell_9/mul_2Mulgru_cell_9/sub:z:0gru_cell_9/Relu:activations:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/mul_2?
gru_cell_9/add_3AddV2gru_cell_9/mul_1:z:0gru_cell_9/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/add_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_9_readvariableop_resource)gru_cell_9_matmul_readvariableop_resource+gru_cell_9_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_2359019*
condR
while_cond_2359018*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimet
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp!^gru_cell_9/MatMul/ReadVariableOp#^gru_cell_9/MatMul_1/ReadVariableOp^gru_cell_9/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2D
 gru_cell_9/MatMul/ReadVariableOp gru_cell_9/MatMul/ReadVariableOp2H
"gru_cell_9/MatMul_1/ReadVariableOp"gru_cell_9/MatMul_1/ReadVariableOp26
gru_cell_9/ReadVariableOpgru_cell_9/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
%__inference_signature_wrapper_2359529
lambda_11_input
unknown:	?
	unknown_0:	?
	unknown_1:
??
	unknown_2:
??
	unknown_3:	?
	unknown_4:	?
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllambda_11_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*)
_read_only_resource_inputs
	*0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__wrapped_model_23583752
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:?????????
)
_user_specified_namelambda_11_input
?
?
H__inference_model_GRU_1_layer_call_and_return_conditional_losses_2359150

inputs 
gru_6_2359109:	? 
gru_6_2359111:	?!
gru_6_2359113:
??$
dense_73_2359128:
??
dense_73_2359130:	?#
dense_74_2359144:	?
dense_74_2359146:
identity?? dense_73/StatefulPartitionedCall? dense_74/StatefulPartitionedCall?gru_6/StatefulPartitionedCall?
lambda_11/PartitionedCallPartitionedCallinputs*
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
F__inference_lambda_11_layer_call_and_return_conditional_losses_23589542
lambda_11/PartitionedCall?
gru_6/StatefulPartitionedCallStatefulPartitionedCall"lambda_11/PartitionedCall:output:0gru_6_2359109gru_6_2359111gru_6_2359113*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_gru_6_layer_call_and_return_conditional_losses_23591082
gru_6/StatefulPartitionedCall?
 dense_73/StatefulPartitionedCallStatefulPartitionedCall&gru_6/StatefulPartitionedCall:output:0dense_73_2359128dense_73_2359130*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_73_layer_call_and_return_conditional_losses_23591272"
 dense_73/StatefulPartitionedCall?
 dense_74/StatefulPartitionedCallStatefulPartitionedCall)dense_73/StatefulPartitionedCall:output:0dense_74_2359144dense_74_2359146*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_74_layer_call_and_return_conditional_losses_23591432"
 dense_74/StatefulPartitionedCall?
IdentityIdentity)dense_74/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_73/StatefulPartitionedCall!^dense_74/StatefulPartitionedCall^gru_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2D
 dense_73/StatefulPartitionedCall dense_73/StatefulPartitionedCall2D
 dense_74/StatefulPartitionedCall dense_74/StatefulPartitionedCall2>
gru_6/StatefulPartitionedCallgru_6/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
H__inference_model_GRU_1_layer_call_and_return_conditional_losses_2359422

inputs 
gru_6_2359404:	? 
gru_6_2359406:	?!
gru_6_2359408:
??$
dense_73_2359411:
??
dense_73_2359413:	?#
dense_74_2359416:	?
dense_74_2359418:
identity?? dense_73/StatefulPartitionedCall? dense_74/StatefulPartitionedCall?gru_6/StatefulPartitionedCall?
lambda_11/PartitionedCallPartitionedCallinputs*
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
F__inference_lambda_11_layer_call_and_return_conditional_losses_23593762
lambda_11/PartitionedCall?
gru_6/StatefulPartitionedCallStatefulPartitionedCall"lambda_11/PartitionedCall:output:0gru_6_2359404gru_6_2359406gru_6_2359408*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_gru_6_layer_call_and_return_conditional_losses_23593532
gru_6/StatefulPartitionedCall?
 dense_73/StatefulPartitionedCallStatefulPartitionedCall&gru_6/StatefulPartitionedCall:output:0dense_73_2359411dense_73_2359413*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_73_layer_call_and_return_conditional_losses_23591272"
 dense_73/StatefulPartitionedCall?
 dense_74/StatefulPartitionedCallStatefulPartitionedCall)dense_73/StatefulPartitionedCall:output:0dense_74_2359416dense_74_2359418*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_74_layer_call_and_return_conditional_losses_23591432"
 dense_74/StatefulPartitionedCall?
IdentityIdentity)dense_74/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_73/StatefulPartitionedCall!^dense_74/StatefulPartitionedCall^gru_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2D
 dense_73/StatefulPartitionedCall dense_73/StatefulPartitionedCall2D
 dense_74/StatefulPartitionedCall dense_74/StatefulPartitionedCall2>
gru_6/StatefulPartitionedCallgru_6/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
E__inference_dense_74_layer_call_and_return_conditional_losses_2359143

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
while_cond_2360185
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_2360185___redundant_placeholder05
1while_while_cond_2360185___redundant_placeholder15
1while_while_cond_2360185___redundant_placeholder25
1while_while_cond_2360185___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?"
?
while_body_2358458
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_gru_cell_9_2358480_0:	?-
while_gru_cell_9_2358482_0:	?.
while_gru_cell_9_2358484_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_gru_cell_9_2358480:	?+
while_gru_cell_9_2358482:	?,
while_gru_cell_9_2358484:
????(while/gru_cell_9/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/gru_cell_9/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_9_2358480_0while_gru_cell_9_2358482_0while_gru_cell_9_2358484_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_gru_cell_9_layer_call_and_return_conditional_losses_23584452*
(while/gru_cell_9/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder1while/gru_cell_9/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity1while/gru_cell_9/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?

while/NoOpNoOp)^while/gru_cell_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"6
while_gru_cell_9_2358480while_gru_cell_9_2358480_0"6
while_gru_cell_9_2358482while_gru_cell_9_2358482_0"6
while_gru_cell_9_2358484while_gru_cell_9_2358484_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2T
(while/gru_cell_9/StatefulPartitionedCall(while/gru_cell_9/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
'__inference_gru_6_layer_call_fn_2359936
inputs_0
unknown:	?
	unknown_0:	?
	unknown_1:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_gru_6_layer_call_and_return_conditional_losses_23585222
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?X
?
B__inference_gru_6_layer_call_and_return_conditional_losses_2360428

inputs5
"gru_cell_9_readvariableop_resource:	?<
)gru_cell_9_matmul_readvariableop_resource:	??
+gru_cell_9_matmul_1_readvariableop_resource:
??
identity?? gru_cell_9/MatMul/ReadVariableOp?"gru_cell_9/MatMul_1/ReadVariableOp?gru_cell_9/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicec
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
gru_cell_9/ReadVariableOpReadVariableOp"gru_cell_9_readvariableop_resource*
_output_shapes
:	?*
dtype02
gru_cell_9/ReadVariableOp?
gru_cell_9/unstackUnpack!gru_cell_9/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
gru_cell_9/unstack?
 gru_cell_9/MatMul/ReadVariableOpReadVariableOp)gru_cell_9_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02"
 gru_cell_9/MatMul/ReadVariableOp?
gru_cell_9/MatMulMatMulstrided_slice_2:output:0(gru_cell_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/MatMul?
gru_cell_9/BiasAddBiasAddgru_cell_9/MatMul:product:0gru_cell_9/unstack:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/BiasAdd?
gru_cell_9/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_9/split/split_dim?
gru_cell_9/splitSplit#gru_cell_9/split/split_dim:output:0gru_cell_9/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_cell_9/split?
"gru_cell_9/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_9_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02$
"gru_cell_9/MatMul_1/ReadVariableOp?
gru_cell_9/MatMul_1MatMulzeros:output:0*gru_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/MatMul_1?
gru_cell_9/BiasAdd_1BiasAddgru_cell_9/MatMul_1:product:0gru_cell_9/unstack:output:1*
T0*(
_output_shapes
:??????????2
gru_cell_9/BiasAdd_1y
gru_cell_9/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
gru_cell_9/Const?
gru_cell_9/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_9/split_1/split_dim?
gru_cell_9/split_1SplitVgru_cell_9/BiasAdd_1:output:0gru_cell_9/Const:output:0%gru_cell_9/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_cell_9/split_1?
gru_cell_9/addAddV2gru_cell_9/split:output:0gru_cell_9/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/addz
gru_cell_9/SigmoidSigmoidgru_cell_9/add:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/Sigmoid?
gru_cell_9/add_1AddV2gru_cell_9/split:output:1gru_cell_9/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_cell_9/add_1?
gru_cell_9/Sigmoid_1Sigmoidgru_cell_9/add_1:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/Sigmoid_1?
gru_cell_9/mulMulgru_cell_9/Sigmoid_1:y:0gru_cell_9/split_1:output:2*
T0*(
_output_shapes
:??????????2
gru_cell_9/mul?
gru_cell_9/add_2AddV2gru_cell_9/split:output:2gru_cell_9/mul:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/add_2s
gru_cell_9/ReluRelugru_cell_9/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/Relu?
gru_cell_9/mul_1Mulgru_cell_9/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/mul_1i
gru_cell_9/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_9/sub/x?
gru_cell_9/subSubgru_cell_9/sub/x:output:0gru_cell_9/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/sub?
gru_cell_9/mul_2Mulgru_cell_9/sub:z:0gru_cell_9/Relu:activations:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/mul_2?
gru_cell_9/add_3AddV2gru_cell_9/mul_1:z:0gru_cell_9/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/add_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_9_readvariableop_resource)gru_cell_9_matmul_readvariableop_resource+gru_cell_9_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_2360339*
condR
while_cond_2360338*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimet
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp!^gru_cell_9/MatMul/ReadVariableOp#^gru_cell_9/MatMul_1/ReadVariableOp^gru_cell_9/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2D
 gru_cell_9/MatMul/ReadVariableOp gru_cell_9/MatMul/ReadVariableOp2H
"gru_cell_9/MatMul_1/ReadVariableOp"gru_cell_9/MatMul_1/ReadVariableOp26
gru_cell_9/ReadVariableOpgru_cell_9/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
gru_6_while_cond_2359800(
$gru_6_while_gru_6_while_loop_counter.
*gru_6_while_gru_6_while_maximum_iterations
gru_6_while_placeholder
gru_6_while_placeholder_1
gru_6_while_placeholder_2*
&gru_6_while_less_gru_6_strided_slice_1A
=gru_6_while_gru_6_while_cond_2359800___redundant_placeholder0A
=gru_6_while_gru_6_while_cond_2359800___redundant_placeholder1A
=gru_6_while_gru_6_while_cond_2359800___redundant_placeholder2A
=gru_6_while_gru_6_while_cond_2359800___redundant_placeholder3
gru_6_while_identity
?
gru_6/while/LessLessgru_6_while_placeholder&gru_6_while_less_gru_6_strided_slice_1*
T0*
_output_shapes
: 2
gru_6/while/Lesso
gru_6/while/IdentityIdentitygru_6/while/Less:z:0*
T0
*
_output_shapes
: 2
gru_6/while/Identity"5
gru_6_while_identitygru_6/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?D
?
while_body_2360339
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
*while_gru_cell_9_readvariableop_resource_0:	?D
1while_gru_cell_9_matmul_readvariableop_resource_0:	?G
3while_gru_cell_9_matmul_1_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
(while_gru_cell_9_readvariableop_resource:	?B
/while_gru_cell_9_matmul_readvariableop_resource:	?E
1while_gru_cell_9_matmul_1_readvariableop_resource:
????&while/gru_cell_9/MatMul/ReadVariableOp?(while/gru_cell_9/MatMul_1/ReadVariableOp?while/gru_cell_9/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/gru_cell_9/ReadVariableOpReadVariableOp*while_gru_cell_9_readvariableop_resource_0*
_output_shapes
:	?*
dtype02!
while/gru_cell_9/ReadVariableOp?
while/gru_cell_9/unstackUnpack'while/gru_cell_9/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
while/gru_cell_9/unstack?
&while/gru_cell_9/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_9_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02(
&while/gru_cell_9/MatMul/ReadVariableOp?
while/gru_cell_9/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/MatMul?
while/gru_cell_9/BiasAddBiasAdd!while/gru_cell_9/MatMul:product:0!while/gru_cell_9/unstack:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/BiasAdd?
 while/gru_cell_9/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 while/gru_cell_9/split/split_dim?
while/gru_cell_9/splitSplit)while/gru_cell_9/split/split_dim:output:0!while/gru_cell_9/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/gru_cell_9/split?
(while/gru_cell_9/MatMul_1/ReadVariableOpReadVariableOp3while_gru_cell_9_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02*
(while/gru_cell_9/MatMul_1/ReadVariableOp?
while/gru_cell_9/MatMul_1MatMulwhile_placeholder_20while/gru_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/MatMul_1?
while/gru_cell_9/BiasAdd_1BiasAdd#while/gru_cell_9/MatMul_1:product:0!while/gru_cell_9/unstack:output:1*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/BiasAdd_1?
while/gru_cell_9/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
while/gru_cell_9/Const?
"while/gru_cell_9/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"while/gru_cell_9/split_1/split_dim?
while/gru_cell_9/split_1SplitV#while/gru_cell_9/BiasAdd_1:output:0while/gru_cell_9/Const:output:0+while/gru_cell_9/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/gru_cell_9/split_1?
while/gru_cell_9/addAddV2while/gru_cell_9/split:output:0!while/gru_cell_9/split_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/add?
while/gru_cell_9/SigmoidSigmoidwhile/gru_cell_9/add:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/Sigmoid?
while/gru_cell_9/add_1AddV2while/gru_cell_9/split:output:1!while/gru_cell_9/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/add_1?
while/gru_cell_9/Sigmoid_1Sigmoidwhile/gru_cell_9/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/Sigmoid_1?
while/gru_cell_9/mulMulwhile/gru_cell_9/Sigmoid_1:y:0!while/gru_cell_9/split_1:output:2*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/mul?
while/gru_cell_9/add_2AddV2while/gru_cell_9/split:output:2while/gru_cell_9/mul:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/add_2?
while/gru_cell_9/ReluReluwhile/gru_cell_9/add_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/Relu?
while/gru_cell_9/mul_1Mulwhile/gru_cell_9/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/mul_1u
while/gru_cell_9/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell_9/sub/x?
while/gru_cell_9/subSubwhile/gru_cell_9/sub/x:output:0while/gru_cell_9/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/sub?
while/gru_cell_9/mul_2Mulwhile/gru_cell_9/sub:z:0#while/gru_cell_9/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/mul_2?
while/gru_cell_9/add_3AddV2while/gru_cell_9/mul_1:z:0while/gru_cell_9/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_9/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell_9/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?

while/NoOpNoOp'^while/gru_cell_9/MatMul/ReadVariableOp)^while/gru_cell_9/MatMul_1/ReadVariableOp ^while/gru_cell_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"h
1while_gru_cell_9_matmul_1_readvariableop_resource3while_gru_cell_9_matmul_1_readvariableop_resource_0"d
/while_gru_cell_9_matmul_readvariableop_resource1while_gru_cell_9_matmul_readvariableop_resource_0"V
(while_gru_cell_9_readvariableop_resource*while_gru_cell_9_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2P
&while/gru_cell_9/MatMul/ReadVariableOp&while/gru_cell_9/MatMul/ReadVariableOp2T
(while/gru_cell_9/MatMul_1/ReadVariableOp(while/gru_cell_9/MatMul_1/ReadVariableOp2B
while/gru_cell_9/ReadVariableOpwhile/gru_cell_9/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?`
?
$model_GRU_1_gru_6_while_body_2358273@
<model_gru_1_gru_6_while_model_gru_1_gru_6_while_loop_counterF
Bmodel_gru_1_gru_6_while_model_gru_1_gru_6_while_maximum_iterations'
#model_gru_1_gru_6_while_placeholder)
%model_gru_1_gru_6_while_placeholder_1)
%model_gru_1_gru_6_while_placeholder_2?
;model_gru_1_gru_6_while_model_gru_1_gru_6_strided_slice_1_0{
wmodel_gru_1_gru_6_while_tensorarrayv2read_tensorlistgetitem_model_gru_1_gru_6_tensorarrayunstack_tensorlistfromtensor_0O
<model_gru_1_gru_6_while_gru_cell_9_readvariableop_resource_0:	?V
Cmodel_gru_1_gru_6_while_gru_cell_9_matmul_readvariableop_resource_0:	?Y
Emodel_gru_1_gru_6_while_gru_cell_9_matmul_1_readvariableop_resource_0:
??$
 model_gru_1_gru_6_while_identity&
"model_gru_1_gru_6_while_identity_1&
"model_gru_1_gru_6_while_identity_2&
"model_gru_1_gru_6_while_identity_3&
"model_gru_1_gru_6_while_identity_4=
9model_gru_1_gru_6_while_model_gru_1_gru_6_strided_slice_1y
umodel_gru_1_gru_6_while_tensorarrayv2read_tensorlistgetitem_model_gru_1_gru_6_tensorarrayunstack_tensorlistfromtensorM
:model_gru_1_gru_6_while_gru_cell_9_readvariableop_resource:	?T
Amodel_gru_1_gru_6_while_gru_cell_9_matmul_readvariableop_resource:	?W
Cmodel_gru_1_gru_6_while_gru_cell_9_matmul_1_readvariableop_resource:
????8model_GRU_1/gru_6/while/gru_cell_9/MatMul/ReadVariableOp?:model_GRU_1/gru_6/while/gru_cell_9/MatMul_1/ReadVariableOp?1model_GRU_1/gru_6/while/gru_cell_9/ReadVariableOp?
Imodel_GRU_1/gru_6/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2K
Imodel_GRU_1/gru_6/while/TensorArrayV2Read/TensorListGetItem/element_shape?
;model_GRU_1/gru_6/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemwmodel_gru_1_gru_6_while_tensorarrayv2read_tensorlistgetitem_model_gru_1_gru_6_tensorarrayunstack_tensorlistfromtensor_0#model_gru_1_gru_6_while_placeholderRmodel_GRU_1/gru_6/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02=
;model_GRU_1/gru_6/while/TensorArrayV2Read/TensorListGetItem?
1model_GRU_1/gru_6/while/gru_cell_9/ReadVariableOpReadVariableOp<model_gru_1_gru_6_while_gru_cell_9_readvariableop_resource_0*
_output_shapes
:	?*
dtype023
1model_GRU_1/gru_6/while/gru_cell_9/ReadVariableOp?
*model_GRU_1/gru_6/while/gru_cell_9/unstackUnpack9model_GRU_1/gru_6/while/gru_cell_9/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2,
*model_GRU_1/gru_6/while/gru_cell_9/unstack?
8model_GRU_1/gru_6/while/gru_cell_9/MatMul/ReadVariableOpReadVariableOpCmodel_gru_1_gru_6_while_gru_cell_9_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02:
8model_GRU_1/gru_6/while/gru_cell_9/MatMul/ReadVariableOp?
)model_GRU_1/gru_6/while/gru_cell_9/MatMulMatMulBmodel_GRU_1/gru_6/while/TensorArrayV2Read/TensorListGetItem:item:0@model_GRU_1/gru_6/while/gru_cell_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2+
)model_GRU_1/gru_6/while/gru_cell_9/MatMul?
*model_GRU_1/gru_6/while/gru_cell_9/BiasAddBiasAdd3model_GRU_1/gru_6/while/gru_cell_9/MatMul:product:03model_GRU_1/gru_6/while/gru_cell_9/unstack:output:0*
T0*(
_output_shapes
:??????????2,
*model_GRU_1/gru_6/while/gru_cell_9/BiasAdd?
2model_GRU_1/gru_6/while/gru_cell_9/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????24
2model_GRU_1/gru_6/while/gru_cell_9/split/split_dim?
(model_GRU_1/gru_6/while/gru_cell_9/splitSplit;model_GRU_1/gru_6/while/gru_cell_9/split/split_dim:output:03model_GRU_1/gru_6/while/gru_cell_9/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2*
(model_GRU_1/gru_6/while/gru_cell_9/split?
:model_GRU_1/gru_6/while/gru_cell_9/MatMul_1/ReadVariableOpReadVariableOpEmodel_gru_1_gru_6_while_gru_cell_9_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02<
:model_GRU_1/gru_6/while/gru_cell_9/MatMul_1/ReadVariableOp?
+model_GRU_1/gru_6/while/gru_cell_9/MatMul_1MatMul%model_gru_1_gru_6_while_placeholder_2Bmodel_GRU_1/gru_6/while/gru_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2-
+model_GRU_1/gru_6/while/gru_cell_9/MatMul_1?
,model_GRU_1/gru_6/while/gru_cell_9/BiasAdd_1BiasAdd5model_GRU_1/gru_6/while/gru_cell_9/MatMul_1:product:03model_GRU_1/gru_6/while/gru_cell_9/unstack:output:1*
T0*(
_output_shapes
:??????????2.
,model_GRU_1/gru_6/while/gru_cell_9/BiasAdd_1?
(model_GRU_1/gru_6/while/gru_cell_9/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2*
(model_GRU_1/gru_6/while/gru_cell_9/Const?
4model_GRU_1/gru_6/while/gru_cell_9/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????26
4model_GRU_1/gru_6/while/gru_cell_9/split_1/split_dim?
*model_GRU_1/gru_6/while/gru_cell_9/split_1SplitV5model_GRU_1/gru_6/while/gru_cell_9/BiasAdd_1:output:01model_GRU_1/gru_6/while/gru_cell_9/Const:output:0=model_GRU_1/gru_6/while/gru_cell_9/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2,
*model_GRU_1/gru_6/while/gru_cell_9/split_1?
&model_GRU_1/gru_6/while/gru_cell_9/addAddV21model_GRU_1/gru_6/while/gru_cell_9/split:output:03model_GRU_1/gru_6/while/gru_cell_9/split_1:output:0*
T0*(
_output_shapes
:??????????2(
&model_GRU_1/gru_6/while/gru_cell_9/add?
*model_GRU_1/gru_6/while/gru_cell_9/SigmoidSigmoid*model_GRU_1/gru_6/while/gru_cell_9/add:z:0*
T0*(
_output_shapes
:??????????2,
*model_GRU_1/gru_6/while/gru_cell_9/Sigmoid?
(model_GRU_1/gru_6/while/gru_cell_9/add_1AddV21model_GRU_1/gru_6/while/gru_cell_9/split:output:13model_GRU_1/gru_6/while/gru_cell_9/split_1:output:1*
T0*(
_output_shapes
:??????????2*
(model_GRU_1/gru_6/while/gru_cell_9/add_1?
,model_GRU_1/gru_6/while/gru_cell_9/Sigmoid_1Sigmoid,model_GRU_1/gru_6/while/gru_cell_9/add_1:z:0*
T0*(
_output_shapes
:??????????2.
,model_GRU_1/gru_6/while/gru_cell_9/Sigmoid_1?
&model_GRU_1/gru_6/while/gru_cell_9/mulMul0model_GRU_1/gru_6/while/gru_cell_9/Sigmoid_1:y:03model_GRU_1/gru_6/while/gru_cell_9/split_1:output:2*
T0*(
_output_shapes
:??????????2(
&model_GRU_1/gru_6/while/gru_cell_9/mul?
(model_GRU_1/gru_6/while/gru_cell_9/add_2AddV21model_GRU_1/gru_6/while/gru_cell_9/split:output:2*model_GRU_1/gru_6/while/gru_cell_9/mul:z:0*
T0*(
_output_shapes
:??????????2*
(model_GRU_1/gru_6/while/gru_cell_9/add_2?
'model_GRU_1/gru_6/while/gru_cell_9/ReluRelu,model_GRU_1/gru_6/while/gru_cell_9/add_2:z:0*
T0*(
_output_shapes
:??????????2)
'model_GRU_1/gru_6/while/gru_cell_9/Relu?
(model_GRU_1/gru_6/while/gru_cell_9/mul_1Mul.model_GRU_1/gru_6/while/gru_cell_9/Sigmoid:y:0%model_gru_1_gru_6_while_placeholder_2*
T0*(
_output_shapes
:??????????2*
(model_GRU_1/gru_6/while/gru_cell_9/mul_1?
(model_GRU_1/gru_6/while/gru_cell_9/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2*
(model_GRU_1/gru_6/while/gru_cell_9/sub/x?
&model_GRU_1/gru_6/while/gru_cell_9/subSub1model_GRU_1/gru_6/while/gru_cell_9/sub/x:output:0.model_GRU_1/gru_6/while/gru_cell_9/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2(
&model_GRU_1/gru_6/while/gru_cell_9/sub?
(model_GRU_1/gru_6/while/gru_cell_9/mul_2Mul*model_GRU_1/gru_6/while/gru_cell_9/sub:z:05model_GRU_1/gru_6/while/gru_cell_9/Relu:activations:0*
T0*(
_output_shapes
:??????????2*
(model_GRU_1/gru_6/while/gru_cell_9/mul_2?
(model_GRU_1/gru_6/while/gru_cell_9/add_3AddV2,model_GRU_1/gru_6/while/gru_cell_9/mul_1:z:0,model_GRU_1/gru_6/while/gru_cell_9/mul_2:z:0*
T0*(
_output_shapes
:??????????2*
(model_GRU_1/gru_6/while/gru_cell_9/add_3?
<model_GRU_1/gru_6/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem%model_gru_1_gru_6_while_placeholder_1#model_gru_1_gru_6_while_placeholder,model_GRU_1/gru_6/while/gru_cell_9/add_3:z:0*
_output_shapes
: *
element_dtype02>
<model_GRU_1/gru_6/while/TensorArrayV2Write/TensorListSetItem?
model_GRU_1/gru_6/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
model_GRU_1/gru_6/while/add/y?
model_GRU_1/gru_6/while/addAddV2#model_gru_1_gru_6_while_placeholder&model_GRU_1/gru_6/while/add/y:output:0*
T0*
_output_shapes
: 2
model_GRU_1/gru_6/while/add?
model_GRU_1/gru_6/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2!
model_GRU_1/gru_6/while/add_1/y?
model_GRU_1/gru_6/while/add_1AddV2<model_gru_1_gru_6_while_model_gru_1_gru_6_while_loop_counter(model_GRU_1/gru_6/while/add_1/y:output:0*
T0*
_output_shapes
: 2
model_GRU_1/gru_6/while/add_1?
 model_GRU_1/gru_6/while/IdentityIdentity!model_GRU_1/gru_6/while/add_1:z:0^model_GRU_1/gru_6/while/NoOp*
T0*
_output_shapes
: 2"
 model_GRU_1/gru_6/while/Identity?
"model_GRU_1/gru_6/while/Identity_1IdentityBmodel_gru_1_gru_6_while_model_gru_1_gru_6_while_maximum_iterations^model_GRU_1/gru_6/while/NoOp*
T0*
_output_shapes
: 2$
"model_GRU_1/gru_6/while/Identity_1?
"model_GRU_1/gru_6/while/Identity_2Identitymodel_GRU_1/gru_6/while/add:z:0^model_GRU_1/gru_6/while/NoOp*
T0*
_output_shapes
: 2$
"model_GRU_1/gru_6/while/Identity_2?
"model_GRU_1/gru_6/while/Identity_3IdentityLmodel_GRU_1/gru_6/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^model_GRU_1/gru_6/while/NoOp*
T0*
_output_shapes
: 2$
"model_GRU_1/gru_6/while/Identity_3?
"model_GRU_1/gru_6/while/Identity_4Identity,model_GRU_1/gru_6/while/gru_cell_9/add_3:z:0^model_GRU_1/gru_6/while/NoOp*
T0*(
_output_shapes
:??????????2$
"model_GRU_1/gru_6/while/Identity_4?
model_GRU_1/gru_6/while/NoOpNoOp9^model_GRU_1/gru_6/while/gru_cell_9/MatMul/ReadVariableOp;^model_GRU_1/gru_6/while/gru_cell_9/MatMul_1/ReadVariableOp2^model_GRU_1/gru_6/while/gru_cell_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
model_GRU_1/gru_6/while/NoOp"?
Cmodel_gru_1_gru_6_while_gru_cell_9_matmul_1_readvariableop_resourceEmodel_gru_1_gru_6_while_gru_cell_9_matmul_1_readvariableop_resource_0"?
Amodel_gru_1_gru_6_while_gru_cell_9_matmul_readvariableop_resourceCmodel_gru_1_gru_6_while_gru_cell_9_matmul_readvariableop_resource_0"z
:model_gru_1_gru_6_while_gru_cell_9_readvariableop_resource<model_gru_1_gru_6_while_gru_cell_9_readvariableop_resource_0"M
 model_gru_1_gru_6_while_identity)model_GRU_1/gru_6/while/Identity:output:0"Q
"model_gru_1_gru_6_while_identity_1+model_GRU_1/gru_6/while/Identity_1:output:0"Q
"model_gru_1_gru_6_while_identity_2+model_GRU_1/gru_6/while/Identity_2:output:0"Q
"model_gru_1_gru_6_while_identity_3+model_GRU_1/gru_6/while/Identity_3:output:0"Q
"model_gru_1_gru_6_while_identity_4+model_GRU_1/gru_6/while/Identity_4:output:0"x
9model_gru_1_gru_6_while_model_gru_1_gru_6_strided_slice_1;model_gru_1_gru_6_while_model_gru_1_gru_6_strided_slice_1_0"?
umodel_gru_1_gru_6_while_tensorarrayv2read_tensorlistgetitem_model_gru_1_gru_6_tensorarrayunstack_tensorlistfromtensorwmodel_gru_1_gru_6_while_tensorarrayv2read_tensorlistgetitem_model_gru_1_gru_6_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2t
8model_GRU_1/gru_6/while/gru_cell_9/MatMul/ReadVariableOp8model_GRU_1/gru_6/while/gru_cell_9/MatMul/ReadVariableOp2x
:model_GRU_1/gru_6/while/gru_cell_9/MatMul_1/ReadVariableOp:model_GRU_1/gru_6/while/gru_cell_9/MatMul_1/ReadVariableOp2f
1model_GRU_1/gru_6/while/gru_cell_9/ReadVariableOp1model_GRU_1/gru_6/while/gru_cell_9/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
G
+__inference_lambda_11_layer_call_fn_2359908

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
F__inference_lambda_11_layer_call_and_return_conditional_losses_23589542
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
?;
?
B__inference_gru_6_layer_call_and_return_conditional_losses_2358715

inputs%
gru_cell_9_2358639:	?%
gru_cell_9_2358641:	?&
gru_cell_9_2358643:
??
identity??"gru_cell_9/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicec
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
"gru_cell_9/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_9_2358639gru_cell_9_2358641gru_cell_9_2358643*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_gru_cell_9_layer_call_and_return_conditional_losses_23585882$
"gru_cell_9/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_9_2358639gru_cell_9_2358641gru_cell_9_2358643*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_2358651*
condR
while_cond_2358650*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimet
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity{
NoOpNoOp#^gru_cell_9/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2H
"gru_cell_9/StatefulPartitionedCall"gru_cell_9/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?D
?
while_body_2359019
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
*while_gru_cell_9_readvariableop_resource_0:	?D
1while_gru_cell_9_matmul_readvariableop_resource_0:	?G
3while_gru_cell_9_matmul_1_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
(while_gru_cell_9_readvariableop_resource:	?B
/while_gru_cell_9_matmul_readvariableop_resource:	?E
1while_gru_cell_9_matmul_1_readvariableop_resource:
????&while/gru_cell_9/MatMul/ReadVariableOp?(while/gru_cell_9/MatMul_1/ReadVariableOp?while/gru_cell_9/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/gru_cell_9/ReadVariableOpReadVariableOp*while_gru_cell_9_readvariableop_resource_0*
_output_shapes
:	?*
dtype02!
while/gru_cell_9/ReadVariableOp?
while/gru_cell_9/unstackUnpack'while/gru_cell_9/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
while/gru_cell_9/unstack?
&while/gru_cell_9/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_9_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02(
&while/gru_cell_9/MatMul/ReadVariableOp?
while/gru_cell_9/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/MatMul?
while/gru_cell_9/BiasAddBiasAdd!while/gru_cell_9/MatMul:product:0!while/gru_cell_9/unstack:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/BiasAdd?
 while/gru_cell_9/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 while/gru_cell_9/split/split_dim?
while/gru_cell_9/splitSplit)while/gru_cell_9/split/split_dim:output:0!while/gru_cell_9/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/gru_cell_9/split?
(while/gru_cell_9/MatMul_1/ReadVariableOpReadVariableOp3while_gru_cell_9_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02*
(while/gru_cell_9/MatMul_1/ReadVariableOp?
while/gru_cell_9/MatMul_1MatMulwhile_placeholder_20while/gru_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/MatMul_1?
while/gru_cell_9/BiasAdd_1BiasAdd#while/gru_cell_9/MatMul_1:product:0!while/gru_cell_9/unstack:output:1*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/BiasAdd_1?
while/gru_cell_9/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
while/gru_cell_9/Const?
"while/gru_cell_9/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"while/gru_cell_9/split_1/split_dim?
while/gru_cell_9/split_1SplitV#while/gru_cell_9/BiasAdd_1:output:0while/gru_cell_9/Const:output:0+while/gru_cell_9/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/gru_cell_9/split_1?
while/gru_cell_9/addAddV2while/gru_cell_9/split:output:0!while/gru_cell_9/split_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/add?
while/gru_cell_9/SigmoidSigmoidwhile/gru_cell_9/add:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/Sigmoid?
while/gru_cell_9/add_1AddV2while/gru_cell_9/split:output:1!while/gru_cell_9/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/add_1?
while/gru_cell_9/Sigmoid_1Sigmoidwhile/gru_cell_9/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/Sigmoid_1?
while/gru_cell_9/mulMulwhile/gru_cell_9/Sigmoid_1:y:0!while/gru_cell_9/split_1:output:2*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/mul?
while/gru_cell_9/add_2AddV2while/gru_cell_9/split:output:2while/gru_cell_9/mul:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/add_2?
while/gru_cell_9/ReluReluwhile/gru_cell_9/add_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/Relu?
while/gru_cell_9/mul_1Mulwhile/gru_cell_9/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/mul_1u
while/gru_cell_9/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell_9/sub/x?
while/gru_cell_9/subSubwhile/gru_cell_9/sub/x:output:0while/gru_cell_9/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/sub?
while/gru_cell_9/mul_2Mulwhile/gru_cell_9/sub:z:0#while/gru_cell_9/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/mul_2?
while/gru_cell_9/add_3AddV2while/gru_cell_9/mul_1:z:0while/gru_cell_9/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_9/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell_9/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?

while/NoOpNoOp'^while/gru_cell_9/MatMul/ReadVariableOp)^while/gru_cell_9/MatMul_1/ReadVariableOp ^while/gru_cell_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"h
1while_gru_cell_9_matmul_1_readvariableop_resource3while_gru_cell_9_matmul_1_readvariableop_resource_0"d
/while_gru_cell_9_matmul_readvariableop_resource1while_gru_cell_9_matmul_readvariableop_resource_0"V
(while_gru_cell_9_readvariableop_resource*while_gru_cell_9_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2P
&while/gru_cell_9/MatMul/ReadVariableOp&while/gru_cell_9/MatMul/ReadVariableOp2T
(while/gru_cell_9/MatMul_1/ReadVariableOp(while/gru_cell_9/MatMul_1/ReadVariableOp2B
while/gru_cell_9/ReadVariableOpwhile/gru_cell_9/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
H__inference_model_GRU_1_layer_call_and_return_conditional_losses_2359480
lambda_11_input 
gru_6_2359462:	? 
gru_6_2359464:	?!
gru_6_2359466:
??$
dense_73_2359469:
??
dense_73_2359471:	?#
dense_74_2359474:	?
dense_74_2359476:
identity?? dense_73/StatefulPartitionedCall? dense_74/StatefulPartitionedCall?gru_6/StatefulPartitionedCall?
lambda_11/PartitionedCallPartitionedCalllambda_11_input*
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
F__inference_lambda_11_layer_call_and_return_conditional_losses_23589542
lambda_11/PartitionedCall?
gru_6/StatefulPartitionedCallStatefulPartitionedCall"lambda_11/PartitionedCall:output:0gru_6_2359462gru_6_2359464gru_6_2359466*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_gru_6_layer_call_and_return_conditional_losses_23591082
gru_6/StatefulPartitionedCall?
 dense_73/StatefulPartitionedCallStatefulPartitionedCall&gru_6/StatefulPartitionedCall:output:0dense_73_2359469dense_73_2359471*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_73_layer_call_and_return_conditional_losses_23591272"
 dense_73/StatefulPartitionedCall?
 dense_74/StatefulPartitionedCallStatefulPartitionedCall)dense_73/StatefulPartitionedCall:output:0dense_74_2359474dense_74_2359476*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_74_layer_call_and_return_conditional_losses_23591432"
 dense_74/StatefulPartitionedCall?
IdentityIdentity)dense_74/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_73/StatefulPartitionedCall!^dense_74/StatefulPartitionedCall^gru_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2D
 dense_73/StatefulPartitionedCall dense_73/StatefulPartitionedCall2D
 dense_74/StatefulPartitionedCall dense_74/StatefulPartitionedCall2>
gru_6/StatefulPartitionedCallgru_6/StatefulPartitionedCall:X T
'
_output_shapes
:?????????
)
_user_specified_namelambda_11_input
?X
?
B__inference_gru_6_layer_call_and_return_conditional_losses_2360275
inputs_05
"gru_cell_9_readvariableop_resource:	?<
)gru_cell_9_matmul_readvariableop_resource:	??
+gru_cell_9_matmul_1_readvariableop_resource:
??
identity?? gru_cell_9/MatMul/ReadVariableOp?"gru_cell_9/MatMul_1/ReadVariableOp?gru_cell_9/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicec
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
gru_cell_9/ReadVariableOpReadVariableOp"gru_cell_9_readvariableop_resource*
_output_shapes
:	?*
dtype02
gru_cell_9/ReadVariableOp?
gru_cell_9/unstackUnpack!gru_cell_9/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
gru_cell_9/unstack?
 gru_cell_9/MatMul/ReadVariableOpReadVariableOp)gru_cell_9_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02"
 gru_cell_9/MatMul/ReadVariableOp?
gru_cell_9/MatMulMatMulstrided_slice_2:output:0(gru_cell_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/MatMul?
gru_cell_9/BiasAddBiasAddgru_cell_9/MatMul:product:0gru_cell_9/unstack:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/BiasAdd?
gru_cell_9/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_9/split/split_dim?
gru_cell_9/splitSplit#gru_cell_9/split/split_dim:output:0gru_cell_9/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_cell_9/split?
"gru_cell_9/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_9_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02$
"gru_cell_9/MatMul_1/ReadVariableOp?
gru_cell_9/MatMul_1MatMulzeros:output:0*gru_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/MatMul_1?
gru_cell_9/BiasAdd_1BiasAddgru_cell_9/MatMul_1:product:0gru_cell_9/unstack:output:1*
T0*(
_output_shapes
:??????????2
gru_cell_9/BiasAdd_1y
gru_cell_9/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
gru_cell_9/Const?
gru_cell_9/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_9/split_1/split_dim?
gru_cell_9/split_1SplitVgru_cell_9/BiasAdd_1:output:0gru_cell_9/Const:output:0%gru_cell_9/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_cell_9/split_1?
gru_cell_9/addAddV2gru_cell_9/split:output:0gru_cell_9/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/addz
gru_cell_9/SigmoidSigmoidgru_cell_9/add:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/Sigmoid?
gru_cell_9/add_1AddV2gru_cell_9/split:output:1gru_cell_9/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_cell_9/add_1?
gru_cell_9/Sigmoid_1Sigmoidgru_cell_9/add_1:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/Sigmoid_1?
gru_cell_9/mulMulgru_cell_9/Sigmoid_1:y:0gru_cell_9/split_1:output:2*
T0*(
_output_shapes
:??????????2
gru_cell_9/mul?
gru_cell_9/add_2AddV2gru_cell_9/split:output:2gru_cell_9/mul:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/add_2s
gru_cell_9/ReluRelugru_cell_9/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/Relu?
gru_cell_9/mul_1Mulgru_cell_9/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/mul_1i
gru_cell_9/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_9/sub/x?
gru_cell_9/subSubgru_cell_9/sub/x:output:0gru_cell_9/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/sub?
gru_cell_9/mul_2Mulgru_cell_9/sub:z:0gru_cell_9/Relu:activations:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/mul_2?
gru_cell_9/add_3AddV2gru_cell_9/mul_1:z:0gru_cell_9/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/add_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_9_readvariableop_resource)gru_cell_9_matmul_readvariableop_resource+gru_cell_9_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_2360186*
condR
while_cond_2360185*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimet
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp!^gru_cell_9/MatMul/ReadVariableOp#^gru_cell_9/MatMul_1/ReadVariableOp^gru_cell_9/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2D
 gru_cell_9/MatMul/ReadVariableOp gru_cell_9/MatMul/ReadVariableOp2H
"gru_cell_9/MatMul_1/ReadVariableOp"gru_cell_9/MatMul_1/ReadVariableOp26
gru_cell_9/ReadVariableOpgru_cell_9/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?	
?
gru_6_while_cond_2359632(
$gru_6_while_gru_6_while_loop_counter.
*gru_6_while_gru_6_while_maximum_iterations
gru_6_while_placeholder
gru_6_while_placeholder_1
gru_6_while_placeholder_2*
&gru_6_while_less_gru_6_strided_slice_1A
=gru_6_while_gru_6_while_cond_2359632___redundant_placeholder0A
=gru_6_while_gru_6_while_cond_2359632___redundant_placeholder1A
=gru_6_while_gru_6_while_cond_2359632___redundant_placeholder2A
=gru_6_while_gru_6_while_cond_2359632___redundant_placeholder3
gru_6_while_identity
?
gru_6/while/LessLessgru_6_while_placeholder&gru_6_while_less_gru_6_strided_slice_1*
T0*
_output_shapes
: 2
gru_6/while/Lesso
gru_6/while/IdentityIdentitygru_6/while/Less:z:0*
T0
*
_output_shapes
: 2
gru_6/while/Identity"5
gru_6_while_identitygru_6/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?X
?
B__inference_gru_6_layer_call_and_return_conditional_losses_2360122
inputs_05
"gru_cell_9_readvariableop_resource:	?<
)gru_cell_9_matmul_readvariableop_resource:	??
+gru_cell_9_matmul_1_readvariableop_resource:
??
identity?? gru_cell_9/MatMul/ReadVariableOp?"gru_cell_9/MatMul_1/ReadVariableOp?gru_cell_9/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicec
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
gru_cell_9/ReadVariableOpReadVariableOp"gru_cell_9_readvariableop_resource*
_output_shapes
:	?*
dtype02
gru_cell_9/ReadVariableOp?
gru_cell_9/unstackUnpack!gru_cell_9/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
gru_cell_9/unstack?
 gru_cell_9/MatMul/ReadVariableOpReadVariableOp)gru_cell_9_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02"
 gru_cell_9/MatMul/ReadVariableOp?
gru_cell_9/MatMulMatMulstrided_slice_2:output:0(gru_cell_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/MatMul?
gru_cell_9/BiasAddBiasAddgru_cell_9/MatMul:product:0gru_cell_9/unstack:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/BiasAdd?
gru_cell_9/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_9/split/split_dim?
gru_cell_9/splitSplit#gru_cell_9/split/split_dim:output:0gru_cell_9/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_cell_9/split?
"gru_cell_9/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_9_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02$
"gru_cell_9/MatMul_1/ReadVariableOp?
gru_cell_9/MatMul_1MatMulzeros:output:0*gru_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/MatMul_1?
gru_cell_9/BiasAdd_1BiasAddgru_cell_9/MatMul_1:product:0gru_cell_9/unstack:output:1*
T0*(
_output_shapes
:??????????2
gru_cell_9/BiasAdd_1y
gru_cell_9/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
gru_cell_9/Const?
gru_cell_9/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_9/split_1/split_dim?
gru_cell_9/split_1SplitVgru_cell_9/BiasAdd_1:output:0gru_cell_9/Const:output:0%gru_cell_9/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_cell_9/split_1?
gru_cell_9/addAddV2gru_cell_9/split:output:0gru_cell_9/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/addz
gru_cell_9/SigmoidSigmoidgru_cell_9/add:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/Sigmoid?
gru_cell_9/add_1AddV2gru_cell_9/split:output:1gru_cell_9/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_cell_9/add_1?
gru_cell_9/Sigmoid_1Sigmoidgru_cell_9/add_1:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/Sigmoid_1?
gru_cell_9/mulMulgru_cell_9/Sigmoid_1:y:0gru_cell_9/split_1:output:2*
T0*(
_output_shapes
:??????????2
gru_cell_9/mul?
gru_cell_9/add_2AddV2gru_cell_9/split:output:2gru_cell_9/mul:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/add_2s
gru_cell_9/ReluRelugru_cell_9/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/Relu?
gru_cell_9/mul_1Mulgru_cell_9/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/mul_1i
gru_cell_9/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_9/sub/x?
gru_cell_9/subSubgru_cell_9/sub/x:output:0gru_cell_9/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/sub?
gru_cell_9/mul_2Mulgru_cell_9/sub:z:0gru_cell_9/Relu:activations:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/mul_2?
gru_cell_9/add_3AddV2gru_cell_9/mul_1:z:0gru_cell_9/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/add_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_9_readvariableop_resource)gru_cell_9_matmul_readvariableop_resource+gru_cell_9_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_2360033*
condR
while_cond_2360032*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimet
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp!^gru_cell_9/MatMul/ReadVariableOp#^gru_cell_9/MatMul_1/ReadVariableOp^gru_cell_9/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2D
 gru_cell_9/MatMul/ReadVariableOp gru_cell_9/MatMul/ReadVariableOp2H
"gru_cell_9/MatMul_1/ReadVariableOp"gru_cell_9/MatMul_1/ReadVariableOp26
gru_cell_9/ReadVariableOpgru_cell_9/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?	
?
-__inference_model_GRU_1_layer_call_fn_2359567

inputs
unknown:	?
	unknown_0:	?
	unknown_1:
??
	unknown_2:
??
	unknown_3:	?
	unknown_4:	?
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*)
_read_only_resource_inputs
	*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_model_GRU_1_layer_call_and_return_conditional_losses_23594222
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_2358457
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_2358457___redundant_placeholder05
1while_while_cond_2358457___redundant_placeholder15
1while_while_cond_2358457___redundant_placeholder25
1while_while_cond_2358457___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?;
?
B__inference_gru_6_layer_call_and_return_conditional_losses_2358522

inputs%
gru_cell_9_2358446:	?%
gru_cell_9_2358448:	?&
gru_cell_9_2358450:
??
identity??"gru_cell_9/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicec
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
"gru_cell_9/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_9_2358446gru_cell_9_2358448gru_cell_9_2358450*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_gru_cell_9_layer_call_and_return_conditional_losses_23584452$
"gru_cell_9/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_9_2358446gru_cell_9_2358448gru_cell_9_2358450*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_2358458*
condR
while_cond_2358457*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimet
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity{
NoOpNoOp#^gru_cell_9/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2H
"gru_cell_9/StatefulPartitionedCall"gru_cell_9/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
'__inference_gru_6_layer_call_fn_2359969

inputs
unknown:	?
	unknown_0:	?
	unknown_1:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_gru_6_layer_call_and_return_conditional_losses_23593532
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?D
?
 __inference__traced_save_2360839
file_prefix.
*savev2_dense_73_kernel_read_readvariableop,
(savev2_dense_73_bias_read_readvariableop.
*savev2_dense_74_kernel_read_readvariableop,
(savev2_dense_74_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop6
2savev2_gru_6_gru_cell_9_kernel_read_readvariableop@
<savev2_gru_6_gru_cell_9_recurrent_kernel_read_readvariableop4
0savev2_gru_6_gru_cell_9_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_dense_73_kernel_m_read_readvariableop3
/savev2_adam_dense_73_bias_m_read_readvariableop5
1savev2_adam_dense_74_kernel_m_read_readvariableop3
/savev2_adam_dense_74_bias_m_read_readvariableop=
9savev2_adam_gru_6_gru_cell_9_kernel_m_read_readvariableopG
Csavev2_adam_gru_6_gru_cell_9_recurrent_kernel_m_read_readvariableop;
7savev2_adam_gru_6_gru_cell_9_bias_m_read_readvariableop5
1savev2_adam_dense_73_kernel_v_read_readvariableop3
/savev2_adam_dense_73_bias_v_read_readvariableop5
1savev2_adam_dense_74_kernel_v_read_readvariableop3
/savev2_adam_dense_74_bias_v_read_readvariableop=
9savev2_adam_gru_6_gru_cell_9_kernel_v_read_readvariableopG
Csavev2_adam_gru_6_gru_cell_9_recurrent_kernel_v_read_readvariableop;
7savev2_adam_gru_6_gru_cell_9_bias_v_read_readvariableop
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_73_kernel_read_readvariableop(savev2_dense_73_bias_read_readvariableop*savev2_dense_74_kernel_read_readvariableop(savev2_dense_74_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop2savev2_gru_6_gru_cell_9_kernel_read_readvariableop<savev2_gru_6_gru_cell_9_recurrent_kernel_read_readvariableop0savev2_gru_6_gru_cell_9_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_dense_73_kernel_m_read_readvariableop/savev2_adam_dense_73_bias_m_read_readvariableop1savev2_adam_dense_74_kernel_m_read_readvariableop/savev2_adam_dense_74_bias_m_read_readvariableop9savev2_adam_gru_6_gru_cell_9_kernel_m_read_readvariableopCsavev2_adam_gru_6_gru_cell_9_recurrent_kernel_m_read_readvariableop7savev2_adam_gru_6_gru_cell_9_bias_m_read_readvariableop1savev2_adam_dense_73_kernel_v_read_readvariableop/savev2_adam_dense_73_bias_v_read_readvariableop1savev2_adam_dense_74_kernel_v_read_readvariableop/savev2_adam_dense_74_bias_v_read_readvariableop9savev2_adam_gru_6_gru_cell_9_kernel_v_read_readvariableopCsavev2_adam_gru_6_gru_cell_9_recurrent_kernel_v_read_readvariableop7savev2_adam_gru_6_gru_cell_9_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *-
dtypes#
!2	2
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :
??:?:	?:: : : : : :	?:
??:	?: : : : :
??:?:	?::	?:
??:	?:
??:?:	?::	?:
??:	?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :%
!

_output_shapes
:	?:&"
 
_output_shapes
:
??:%!

_output_shapes
:	?:
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
: :&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::%!

_output_shapes
:	?:&"
 
_output_shapes
:
??:%!

_output_shapes
:	?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::%!

_output_shapes
:	?:&"
 
_output_shapes
:
??:%!

_output_shapes
:	?:

_output_shapes
: 
??
?
"__inference__wrapped_model_2358375
lambda_11_inputG
4model_gru_1_gru_6_gru_cell_9_readvariableop_resource:	?N
;model_gru_1_gru_6_gru_cell_9_matmul_readvariableop_resource:	?Q
=model_gru_1_gru_6_gru_cell_9_matmul_1_readvariableop_resource:
??G
3model_gru_1_dense_73_matmul_readvariableop_resource:
??C
4model_gru_1_dense_73_biasadd_readvariableop_resource:	?F
3model_gru_1_dense_74_matmul_readvariableop_resource:	?B
4model_gru_1_dense_74_biasadd_readvariableop_resource:
identity??+model_GRU_1/dense_73/BiasAdd/ReadVariableOp?*model_GRU_1/dense_73/MatMul/ReadVariableOp?+model_GRU_1/dense_74/BiasAdd/ReadVariableOp?*model_GRU_1/dense_74/MatMul/ReadVariableOp?2model_GRU_1/gru_6/gru_cell_9/MatMul/ReadVariableOp?4model_GRU_1/gru_6/gru_cell_9/MatMul_1/ReadVariableOp?+model_GRU_1/gru_6/gru_cell_9/ReadVariableOp?model_GRU_1/gru_6/while?
$model_GRU_1/lambda_11/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$model_GRU_1/lambda_11/ExpandDims/dim?
 model_GRU_1/lambda_11/ExpandDims
ExpandDimslambda_11_input-model_GRU_1/lambda_11/ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2"
 model_GRU_1/lambda_11/ExpandDims?
model_GRU_1/gru_6/ShapeShape)model_GRU_1/lambda_11/ExpandDims:output:0*
T0*
_output_shapes
:2
model_GRU_1/gru_6/Shape?
%model_GRU_1/gru_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%model_GRU_1/gru_6/strided_slice/stack?
'model_GRU_1/gru_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'model_GRU_1/gru_6/strided_slice/stack_1?
'model_GRU_1/gru_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'model_GRU_1/gru_6/strided_slice/stack_2?
model_GRU_1/gru_6/strided_sliceStridedSlice model_GRU_1/gru_6/Shape:output:0.model_GRU_1/gru_6/strided_slice/stack:output:00model_GRU_1/gru_6/strided_slice/stack_1:output:00model_GRU_1/gru_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
model_GRU_1/gru_6/strided_slice?
 model_GRU_1/gru_6/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2"
 model_GRU_1/gru_6/zeros/packed/1?
model_GRU_1/gru_6/zeros/packedPack(model_GRU_1/gru_6/strided_slice:output:0)model_GRU_1/gru_6/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2 
model_GRU_1/gru_6/zeros/packed?
model_GRU_1/gru_6/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
model_GRU_1/gru_6/zeros/Const?
model_GRU_1/gru_6/zerosFill'model_GRU_1/gru_6/zeros/packed:output:0&model_GRU_1/gru_6/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
model_GRU_1/gru_6/zeros?
 model_GRU_1/gru_6/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2"
 model_GRU_1/gru_6/transpose/perm?
model_GRU_1/gru_6/transpose	Transpose)model_GRU_1/lambda_11/ExpandDims:output:0)model_GRU_1/gru_6/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
model_GRU_1/gru_6/transpose?
model_GRU_1/gru_6/Shape_1Shapemodel_GRU_1/gru_6/transpose:y:0*
T0*
_output_shapes
:2
model_GRU_1/gru_6/Shape_1?
'model_GRU_1/gru_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_GRU_1/gru_6/strided_slice_1/stack?
)model_GRU_1/gru_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_GRU_1/gru_6/strided_slice_1/stack_1?
)model_GRU_1/gru_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_GRU_1/gru_6/strided_slice_1/stack_2?
!model_GRU_1/gru_6/strided_slice_1StridedSlice"model_GRU_1/gru_6/Shape_1:output:00model_GRU_1/gru_6/strided_slice_1/stack:output:02model_GRU_1/gru_6/strided_slice_1/stack_1:output:02model_GRU_1/gru_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!model_GRU_1/gru_6/strided_slice_1?
-model_GRU_1/gru_6/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2/
-model_GRU_1/gru_6/TensorArrayV2/element_shape?
model_GRU_1/gru_6/TensorArrayV2TensorListReserve6model_GRU_1/gru_6/TensorArrayV2/element_shape:output:0*model_GRU_1/gru_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02!
model_GRU_1/gru_6/TensorArrayV2?
Gmodel_GRU_1/gru_6/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2I
Gmodel_GRU_1/gru_6/TensorArrayUnstack/TensorListFromTensor/element_shape?
9model_GRU_1/gru_6/TensorArrayUnstack/TensorListFromTensorTensorListFromTensormodel_GRU_1/gru_6/transpose:y:0Pmodel_GRU_1/gru_6/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02;
9model_GRU_1/gru_6/TensorArrayUnstack/TensorListFromTensor?
'model_GRU_1/gru_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'model_GRU_1/gru_6/strided_slice_2/stack?
)model_GRU_1/gru_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_GRU_1/gru_6/strided_slice_2/stack_1?
)model_GRU_1/gru_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_GRU_1/gru_6/strided_slice_2/stack_2?
!model_GRU_1/gru_6/strided_slice_2StridedSlicemodel_GRU_1/gru_6/transpose:y:00model_GRU_1/gru_6/strided_slice_2/stack:output:02model_GRU_1/gru_6/strided_slice_2/stack_1:output:02model_GRU_1/gru_6/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2#
!model_GRU_1/gru_6/strided_slice_2?
+model_GRU_1/gru_6/gru_cell_9/ReadVariableOpReadVariableOp4model_gru_1_gru_6_gru_cell_9_readvariableop_resource*
_output_shapes
:	?*
dtype02-
+model_GRU_1/gru_6/gru_cell_9/ReadVariableOp?
$model_GRU_1/gru_6/gru_cell_9/unstackUnpack3model_GRU_1/gru_6/gru_cell_9/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2&
$model_GRU_1/gru_6/gru_cell_9/unstack?
2model_GRU_1/gru_6/gru_cell_9/MatMul/ReadVariableOpReadVariableOp;model_gru_1_gru_6_gru_cell_9_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype024
2model_GRU_1/gru_6/gru_cell_9/MatMul/ReadVariableOp?
#model_GRU_1/gru_6/gru_cell_9/MatMulMatMul*model_GRU_1/gru_6/strided_slice_2:output:0:model_GRU_1/gru_6/gru_cell_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2%
#model_GRU_1/gru_6/gru_cell_9/MatMul?
$model_GRU_1/gru_6/gru_cell_9/BiasAddBiasAdd-model_GRU_1/gru_6/gru_cell_9/MatMul:product:0-model_GRU_1/gru_6/gru_cell_9/unstack:output:0*
T0*(
_output_shapes
:??????????2&
$model_GRU_1/gru_6/gru_cell_9/BiasAdd?
,model_GRU_1/gru_6/gru_cell_9/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2.
,model_GRU_1/gru_6/gru_cell_9/split/split_dim?
"model_GRU_1/gru_6/gru_cell_9/splitSplit5model_GRU_1/gru_6/gru_cell_9/split/split_dim:output:0-model_GRU_1/gru_6/gru_cell_9/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2$
"model_GRU_1/gru_6/gru_cell_9/split?
4model_GRU_1/gru_6/gru_cell_9/MatMul_1/ReadVariableOpReadVariableOp=model_gru_1_gru_6_gru_cell_9_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype026
4model_GRU_1/gru_6/gru_cell_9/MatMul_1/ReadVariableOp?
%model_GRU_1/gru_6/gru_cell_9/MatMul_1MatMul model_GRU_1/gru_6/zeros:output:0<model_GRU_1/gru_6/gru_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2'
%model_GRU_1/gru_6/gru_cell_9/MatMul_1?
&model_GRU_1/gru_6/gru_cell_9/BiasAdd_1BiasAdd/model_GRU_1/gru_6/gru_cell_9/MatMul_1:product:0-model_GRU_1/gru_6/gru_cell_9/unstack:output:1*
T0*(
_output_shapes
:??????????2(
&model_GRU_1/gru_6/gru_cell_9/BiasAdd_1?
"model_GRU_1/gru_6/gru_cell_9/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2$
"model_GRU_1/gru_6/gru_cell_9/Const?
.model_GRU_1/gru_6/gru_cell_9/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????20
.model_GRU_1/gru_6/gru_cell_9/split_1/split_dim?
$model_GRU_1/gru_6/gru_cell_9/split_1SplitV/model_GRU_1/gru_6/gru_cell_9/BiasAdd_1:output:0+model_GRU_1/gru_6/gru_cell_9/Const:output:07model_GRU_1/gru_6/gru_cell_9/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2&
$model_GRU_1/gru_6/gru_cell_9/split_1?
 model_GRU_1/gru_6/gru_cell_9/addAddV2+model_GRU_1/gru_6/gru_cell_9/split:output:0-model_GRU_1/gru_6/gru_cell_9/split_1:output:0*
T0*(
_output_shapes
:??????????2"
 model_GRU_1/gru_6/gru_cell_9/add?
$model_GRU_1/gru_6/gru_cell_9/SigmoidSigmoid$model_GRU_1/gru_6/gru_cell_9/add:z:0*
T0*(
_output_shapes
:??????????2&
$model_GRU_1/gru_6/gru_cell_9/Sigmoid?
"model_GRU_1/gru_6/gru_cell_9/add_1AddV2+model_GRU_1/gru_6/gru_cell_9/split:output:1-model_GRU_1/gru_6/gru_cell_9/split_1:output:1*
T0*(
_output_shapes
:??????????2$
"model_GRU_1/gru_6/gru_cell_9/add_1?
&model_GRU_1/gru_6/gru_cell_9/Sigmoid_1Sigmoid&model_GRU_1/gru_6/gru_cell_9/add_1:z:0*
T0*(
_output_shapes
:??????????2(
&model_GRU_1/gru_6/gru_cell_9/Sigmoid_1?
 model_GRU_1/gru_6/gru_cell_9/mulMul*model_GRU_1/gru_6/gru_cell_9/Sigmoid_1:y:0-model_GRU_1/gru_6/gru_cell_9/split_1:output:2*
T0*(
_output_shapes
:??????????2"
 model_GRU_1/gru_6/gru_cell_9/mul?
"model_GRU_1/gru_6/gru_cell_9/add_2AddV2+model_GRU_1/gru_6/gru_cell_9/split:output:2$model_GRU_1/gru_6/gru_cell_9/mul:z:0*
T0*(
_output_shapes
:??????????2$
"model_GRU_1/gru_6/gru_cell_9/add_2?
!model_GRU_1/gru_6/gru_cell_9/ReluRelu&model_GRU_1/gru_6/gru_cell_9/add_2:z:0*
T0*(
_output_shapes
:??????????2#
!model_GRU_1/gru_6/gru_cell_9/Relu?
"model_GRU_1/gru_6/gru_cell_9/mul_1Mul(model_GRU_1/gru_6/gru_cell_9/Sigmoid:y:0 model_GRU_1/gru_6/zeros:output:0*
T0*(
_output_shapes
:??????????2$
"model_GRU_1/gru_6/gru_cell_9/mul_1?
"model_GRU_1/gru_6/gru_cell_9/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"model_GRU_1/gru_6/gru_cell_9/sub/x?
 model_GRU_1/gru_6/gru_cell_9/subSub+model_GRU_1/gru_6/gru_cell_9/sub/x:output:0(model_GRU_1/gru_6/gru_cell_9/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2"
 model_GRU_1/gru_6/gru_cell_9/sub?
"model_GRU_1/gru_6/gru_cell_9/mul_2Mul$model_GRU_1/gru_6/gru_cell_9/sub:z:0/model_GRU_1/gru_6/gru_cell_9/Relu:activations:0*
T0*(
_output_shapes
:??????????2$
"model_GRU_1/gru_6/gru_cell_9/mul_2?
"model_GRU_1/gru_6/gru_cell_9/add_3AddV2&model_GRU_1/gru_6/gru_cell_9/mul_1:z:0&model_GRU_1/gru_6/gru_cell_9/mul_2:z:0*
T0*(
_output_shapes
:??????????2$
"model_GRU_1/gru_6/gru_cell_9/add_3?
/model_GRU_1/gru_6/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   21
/model_GRU_1/gru_6/TensorArrayV2_1/element_shape?
!model_GRU_1/gru_6/TensorArrayV2_1TensorListReserve8model_GRU_1/gru_6/TensorArrayV2_1/element_shape:output:0*model_GRU_1/gru_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02#
!model_GRU_1/gru_6/TensorArrayV2_1r
model_GRU_1/gru_6/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
model_GRU_1/gru_6/time?
*model_GRU_1/gru_6/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2,
*model_GRU_1/gru_6/while/maximum_iterations?
$model_GRU_1/gru_6/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2&
$model_GRU_1/gru_6/while/loop_counter?
model_GRU_1/gru_6/whileWhile-model_GRU_1/gru_6/while/loop_counter:output:03model_GRU_1/gru_6/while/maximum_iterations:output:0model_GRU_1/gru_6/time:output:0*model_GRU_1/gru_6/TensorArrayV2_1:handle:0 model_GRU_1/gru_6/zeros:output:0*model_GRU_1/gru_6/strided_slice_1:output:0Imodel_GRU_1/gru_6/TensorArrayUnstack/TensorListFromTensor:output_handle:04model_gru_1_gru_6_gru_cell_9_readvariableop_resource;model_gru_1_gru_6_gru_cell_9_matmul_readvariableop_resource=model_gru_1_gru_6_gru_cell_9_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *0
body(R&
$model_GRU_1_gru_6_while_body_2358273*0
cond(R&
$model_GRU_1_gru_6_while_cond_2358272*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations 2
model_GRU_1/gru_6/while?
Bmodel_GRU_1/gru_6/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2D
Bmodel_GRU_1/gru_6/TensorArrayV2Stack/TensorListStack/element_shape?
4model_GRU_1/gru_6/TensorArrayV2Stack/TensorListStackTensorListStack model_GRU_1/gru_6/while:output:3Kmodel_GRU_1/gru_6/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype026
4model_GRU_1/gru_6/TensorArrayV2Stack/TensorListStack?
'model_GRU_1/gru_6/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2)
'model_GRU_1/gru_6/strided_slice_3/stack?
)model_GRU_1/gru_6/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2+
)model_GRU_1/gru_6/strided_slice_3/stack_1?
)model_GRU_1/gru_6/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)model_GRU_1/gru_6/strided_slice_3/stack_2?
!model_GRU_1/gru_6/strided_slice_3StridedSlice=model_GRU_1/gru_6/TensorArrayV2Stack/TensorListStack:tensor:00model_GRU_1/gru_6/strided_slice_3/stack:output:02model_GRU_1/gru_6/strided_slice_3/stack_1:output:02model_GRU_1/gru_6/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2#
!model_GRU_1/gru_6/strided_slice_3?
"model_GRU_1/gru_6/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"model_GRU_1/gru_6/transpose_1/perm?
model_GRU_1/gru_6/transpose_1	Transpose=model_GRU_1/gru_6/TensorArrayV2Stack/TensorListStack:tensor:0+model_GRU_1/gru_6/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
model_GRU_1/gru_6/transpose_1?
model_GRU_1/gru_6/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
model_GRU_1/gru_6/runtime?
*model_GRU_1/dense_73/MatMul/ReadVariableOpReadVariableOp3model_gru_1_dense_73_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02,
*model_GRU_1/dense_73/MatMul/ReadVariableOp?
model_GRU_1/dense_73/MatMulMatMul*model_GRU_1/gru_6/strided_slice_3:output:02model_GRU_1/dense_73/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model_GRU_1/dense_73/MatMul?
+model_GRU_1/dense_73/BiasAdd/ReadVariableOpReadVariableOp4model_gru_1_dense_73_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+model_GRU_1/dense_73/BiasAdd/ReadVariableOp?
model_GRU_1/dense_73/BiasAddBiasAdd%model_GRU_1/dense_73/MatMul:product:03model_GRU_1/dense_73/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model_GRU_1/dense_73/BiasAdd?
model_GRU_1/dense_73/ReluRelu%model_GRU_1/dense_73/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
model_GRU_1/dense_73/Relu?
*model_GRU_1/dense_74/MatMul/ReadVariableOpReadVariableOp3model_gru_1_dense_74_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02,
*model_GRU_1/dense_74/MatMul/ReadVariableOp?
model_GRU_1/dense_74/MatMulMatMul'model_GRU_1/dense_73/Relu:activations:02model_GRU_1/dense_74/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_GRU_1/dense_74/MatMul?
+model_GRU_1/dense_74/BiasAdd/ReadVariableOpReadVariableOp4model_gru_1_dense_74_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+model_GRU_1/dense_74/BiasAdd/ReadVariableOp?
model_GRU_1/dense_74/BiasAddBiasAdd%model_GRU_1/dense_74/MatMul:product:03model_GRU_1/dense_74/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_GRU_1/dense_74/BiasAdd?
IdentityIdentity%model_GRU_1/dense_74/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp,^model_GRU_1/dense_73/BiasAdd/ReadVariableOp+^model_GRU_1/dense_73/MatMul/ReadVariableOp,^model_GRU_1/dense_74/BiasAdd/ReadVariableOp+^model_GRU_1/dense_74/MatMul/ReadVariableOp3^model_GRU_1/gru_6/gru_cell_9/MatMul/ReadVariableOp5^model_GRU_1/gru_6/gru_cell_9/MatMul_1/ReadVariableOp,^model_GRU_1/gru_6/gru_cell_9/ReadVariableOp^model_GRU_1/gru_6/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2Z
+model_GRU_1/dense_73/BiasAdd/ReadVariableOp+model_GRU_1/dense_73/BiasAdd/ReadVariableOp2X
*model_GRU_1/dense_73/MatMul/ReadVariableOp*model_GRU_1/dense_73/MatMul/ReadVariableOp2Z
+model_GRU_1/dense_74/BiasAdd/ReadVariableOp+model_GRU_1/dense_74/BiasAdd/ReadVariableOp2X
*model_GRU_1/dense_74/MatMul/ReadVariableOp*model_GRU_1/dense_74/MatMul/ReadVariableOp2h
2model_GRU_1/gru_6/gru_cell_9/MatMul/ReadVariableOp2model_GRU_1/gru_6/gru_cell_9/MatMul/ReadVariableOp2l
4model_GRU_1/gru_6/gru_cell_9/MatMul_1/ReadVariableOp4model_GRU_1/gru_6/gru_cell_9/MatMul_1/ReadVariableOp2Z
+model_GRU_1/gru_6/gru_cell_9/ReadVariableOp+model_GRU_1/gru_6/gru_cell_9/ReadVariableOp22
model_GRU_1/gru_6/whilemodel_GRU_1/gru_6/while:X T
'
_output_shapes
:?????????
)
_user_specified_namelambda_11_input
?D
?
while_body_2360186
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
*while_gru_cell_9_readvariableop_resource_0:	?D
1while_gru_cell_9_matmul_readvariableop_resource_0:	?G
3while_gru_cell_9_matmul_1_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
(while_gru_cell_9_readvariableop_resource:	?B
/while_gru_cell_9_matmul_readvariableop_resource:	?E
1while_gru_cell_9_matmul_1_readvariableop_resource:
????&while/gru_cell_9/MatMul/ReadVariableOp?(while/gru_cell_9/MatMul_1/ReadVariableOp?while/gru_cell_9/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/gru_cell_9/ReadVariableOpReadVariableOp*while_gru_cell_9_readvariableop_resource_0*
_output_shapes
:	?*
dtype02!
while/gru_cell_9/ReadVariableOp?
while/gru_cell_9/unstackUnpack'while/gru_cell_9/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
while/gru_cell_9/unstack?
&while/gru_cell_9/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_9_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02(
&while/gru_cell_9/MatMul/ReadVariableOp?
while/gru_cell_9/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/MatMul?
while/gru_cell_9/BiasAddBiasAdd!while/gru_cell_9/MatMul:product:0!while/gru_cell_9/unstack:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/BiasAdd?
 while/gru_cell_9/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 while/gru_cell_9/split/split_dim?
while/gru_cell_9/splitSplit)while/gru_cell_9/split/split_dim:output:0!while/gru_cell_9/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/gru_cell_9/split?
(while/gru_cell_9/MatMul_1/ReadVariableOpReadVariableOp3while_gru_cell_9_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02*
(while/gru_cell_9/MatMul_1/ReadVariableOp?
while/gru_cell_9/MatMul_1MatMulwhile_placeholder_20while/gru_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/MatMul_1?
while/gru_cell_9/BiasAdd_1BiasAdd#while/gru_cell_9/MatMul_1:product:0!while/gru_cell_9/unstack:output:1*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/BiasAdd_1?
while/gru_cell_9/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
while/gru_cell_9/Const?
"while/gru_cell_9/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"while/gru_cell_9/split_1/split_dim?
while/gru_cell_9/split_1SplitV#while/gru_cell_9/BiasAdd_1:output:0while/gru_cell_9/Const:output:0+while/gru_cell_9/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/gru_cell_9/split_1?
while/gru_cell_9/addAddV2while/gru_cell_9/split:output:0!while/gru_cell_9/split_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/add?
while/gru_cell_9/SigmoidSigmoidwhile/gru_cell_9/add:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/Sigmoid?
while/gru_cell_9/add_1AddV2while/gru_cell_9/split:output:1!while/gru_cell_9/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/add_1?
while/gru_cell_9/Sigmoid_1Sigmoidwhile/gru_cell_9/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/Sigmoid_1?
while/gru_cell_9/mulMulwhile/gru_cell_9/Sigmoid_1:y:0!while/gru_cell_9/split_1:output:2*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/mul?
while/gru_cell_9/add_2AddV2while/gru_cell_9/split:output:2while/gru_cell_9/mul:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/add_2?
while/gru_cell_9/ReluReluwhile/gru_cell_9/add_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/Relu?
while/gru_cell_9/mul_1Mulwhile/gru_cell_9/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/mul_1u
while/gru_cell_9/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell_9/sub/x?
while/gru_cell_9/subSubwhile/gru_cell_9/sub/x:output:0while/gru_cell_9/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/sub?
while/gru_cell_9/mul_2Mulwhile/gru_cell_9/sub:z:0#while/gru_cell_9/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/mul_2?
while/gru_cell_9/add_3AddV2while/gru_cell_9/mul_1:z:0while/gru_cell_9/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_9/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell_9/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?

while/NoOpNoOp'^while/gru_cell_9/MatMul/ReadVariableOp)^while/gru_cell_9/MatMul_1/ReadVariableOp ^while/gru_cell_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"h
1while_gru_cell_9_matmul_1_readvariableop_resource3while_gru_cell_9_matmul_1_readvariableop_resource_0"d
/while_gru_cell_9_matmul_readvariableop_resource1while_gru_cell_9_matmul_readvariableop_resource_0"V
(while_gru_cell_9_readvariableop_resource*while_gru_cell_9_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2P
&while/gru_cell_9/MatMul/ReadVariableOp&while/gru_cell_9/MatMul/ReadVariableOp2T
(while/gru_cell_9/MatMul_1/ReadVariableOp(while/gru_cell_9/MatMul_1/ReadVariableOp2B
while/gru_cell_9/ReadVariableOpwhile/gru_cell_9/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
G
+__inference_lambda_11_layer_call_fn_2359913

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
F__inference_lambda_11_layer_call_and_return_conditional_losses_23593762
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
?
?
G__inference_gru_cell_9_layer_call_and_return_conditional_losses_2358588

inputs

states*
readvariableop_resource:	?1
matmul_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??
identity

identity_1??MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?ReadVariableOpy
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	?*
dtype02
ReadVariableOpl
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2	
unstack?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:??????????2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
split?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:??????????2
	BiasAdd_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split_1/split_dim?
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2	
split_1h
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:??????????2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:??????????2	
Sigmoidl
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:??????????2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_1e
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:??????????2
mulc
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:??????????2
add_2R
ReluRelu	add_2:z:0*
T0*(
_output_shapes
:??????????2
Relu]
mul_1MulSigmoid:y:0states*
T0*(
_output_shapes
:??????????2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/xa
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
sube
mul_2Mulsub:z:0Relu:activations:0*
T0*(
_output_shapes
:??????????2
mul_2`
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:??????????2
add_3e
IdentityIdentity	add_3:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityi

Identity_1Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity_1?
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????:??????????: : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?
b
F__inference_lambda_11_layer_call_and_return_conditional_losses_2358954

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
?X
?
B__inference_gru_6_layer_call_and_return_conditional_losses_2359353

inputs5
"gru_cell_9_readvariableop_resource:	?<
)gru_cell_9_matmul_readvariableop_resource:	??
+gru_cell_9_matmul_1_readvariableop_resource:
??
identity?? gru_cell_9/MatMul/ReadVariableOp?"gru_cell_9/MatMul_1/ReadVariableOp?gru_cell_9/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicec
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
gru_cell_9/ReadVariableOpReadVariableOp"gru_cell_9_readvariableop_resource*
_output_shapes
:	?*
dtype02
gru_cell_9/ReadVariableOp?
gru_cell_9/unstackUnpack!gru_cell_9/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
gru_cell_9/unstack?
 gru_cell_9/MatMul/ReadVariableOpReadVariableOp)gru_cell_9_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02"
 gru_cell_9/MatMul/ReadVariableOp?
gru_cell_9/MatMulMatMulstrided_slice_2:output:0(gru_cell_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/MatMul?
gru_cell_9/BiasAddBiasAddgru_cell_9/MatMul:product:0gru_cell_9/unstack:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/BiasAdd?
gru_cell_9/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_9/split/split_dim?
gru_cell_9/splitSplit#gru_cell_9/split/split_dim:output:0gru_cell_9/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_cell_9/split?
"gru_cell_9/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_9_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02$
"gru_cell_9/MatMul_1/ReadVariableOp?
gru_cell_9/MatMul_1MatMulzeros:output:0*gru_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/MatMul_1?
gru_cell_9/BiasAdd_1BiasAddgru_cell_9/MatMul_1:product:0gru_cell_9/unstack:output:1*
T0*(
_output_shapes
:??????????2
gru_cell_9/BiasAdd_1y
gru_cell_9/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
gru_cell_9/Const?
gru_cell_9/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_9/split_1/split_dim?
gru_cell_9/split_1SplitVgru_cell_9/BiasAdd_1:output:0gru_cell_9/Const:output:0%gru_cell_9/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_cell_9/split_1?
gru_cell_9/addAddV2gru_cell_9/split:output:0gru_cell_9/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/addz
gru_cell_9/SigmoidSigmoidgru_cell_9/add:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/Sigmoid?
gru_cell_9/add_1AddV2gru_cell_9/split:output:1gru_cell_9/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_cell_9/add_1?
gru_cell_9/Sigmoid_1Sigmoidgru_cell_9/add_1:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/Sigmoid_1?
gru_cell_9/mulMulgru_cell_9/Sigmoid_1:y:0gru_cell_9/split_1:output:2*
T0*(
_output_shapes
:??????????2
gru_cell_9/mul?
gru_cell_9/add_2AddV2gru_cell_9/split:output:2gru_cell_9/mul:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/add_2s
gru_cell_9/ReluRelugru_cell_9/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/Relu?
gru_cell_9/mul_1Mulgru_cell_9/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/mul_1i
gru_cell_9/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_9/sub/x?
gru_cell_9/subSubgru_cell_9/sub/x:output:0gru_cell_9/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/sub?
gru_cell_9/mul_2Mulgru_cell_9/sub:z:0gru_cell_9/Relu:activations:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/mul_2?
gru_cell_9/add_3AddV2gru_cell_9/mul_1:z:0gru_cell_9/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/add_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_9_readvariableop_resource)gru_cell_9_matmul_readvariableop_resource+gru_cell_9_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_2359264*
condR
while_cond_2359263*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimet
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp!^gru_cell_9/MatMul/ReadVariableOp#^gru_cell_9/MatMul_1/ReadVariableOp^gru_cell_9/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2D
 gru_cell_9/MatMul/ReadVariableOp gru_cell_9/MatMul/ReadVariableOp2H
"gru_cell_9/MatMul_1/ReadVariableOp"gru_cell_9/MatMul_1/ReadVariableOp26
gru_cell_9/ReadVariableOpgru_cell_9/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_dense_74_layer_call_fn_2360610

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
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_74_layer_call_and_return_conditional_losses_23591432
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
E__inference_dense_74_layer_call_and_return_conditional_losses_2360620

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
while_cond_2359018
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_2359018___redundant_placeholder05
1while_while_cond_2359018___redundant_placeholder15
1while_while_cond_2359018___redundant_placeholder25
1while_while_cond_2359018___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
b
F__inference_lambda_11_layer_call_and_return_conditional_losses_2359376

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
?N
?	
gru_6_while_body_2359801(
$gru_6_while_gru_6_while_loop_counter.
*gru_6_while_gru_6_while_maximum_iterations
gru_6_while_placeholder
gru_6_while_placeholder_1
gru_6_while_placeholder_2'
#gru_6_while_gru_6_strided_slice_1_0c
_gru_6_while_tensorarrayv2read_tensorlistgetitem_gru_6_tensorarrayunstack_tensorlistfromtensor_0C
0gru_6_while_gru_cell_9_readvariableop_resource_0:	?J
7gru_6_while_gru_cell_9_matmul_readvariableop_resource_0:	?M
9gru_6_while_gru_cell_9_matmul_1_readvariableop_resource_0:
??
gru_6_while_identity
gru_6_while_identity_1
gru_6_while_identity_2
gru_6_while_identity_3
gru_6_while_identity_4%
!gru_6_while_gru_6_strided_slice_1a
]gru_6_while_tensorarrayv2read_tensorlistgetitem_gru_6_tensorarrayunstack_tensorlistfromtensorA
.gru_6_while_gru_cell_9_readvariableop_resource:	?H
5gru_6_while_gru_cell_9_matmul_readvariableop_resource:	?K
7gru_6_while_gru_cell_9_matmul_1_readvariableop_resource:
????,gru_6/while/gru_cell_9/MatMul/ReadVariableOp?.gru_6/while/gru_cell_9/MatMul_1/ReadVariableOp?%gru_6/while/gru_cell_9/ReadVariableOp?
=gru_6/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2?
=gru_6/while/TensorArrayV2Read/TensorListGetItem/element_shape?
/gru_6/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_gru_6_while_tensorarrayv2read_tensorlistgetitem_gru_6_tensorarrayunstack_tensorlistfromtensor_0gru_6_while_placeholderFgru_6/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype021
/gru_6/while/TensorArrayV2Read/TensorListGetItem?
%gru_6/while/gru_cell_9/ReadVariableOpReadVariableOp0gru_6_while_gru_cell_9_readvariableop_resource_0*
_output_shapes
:	?*
dtype02'
%gru_6/while/gru_cell_9/ReadVariableOp?
gru_6/while/gru_cell_9/unstackUnpack-gru_6/while/gru_cell_9/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2 
gru_6/while/gru_cell_9/unstack?
,gru_6/while/gru_cell_9/MatMul/ReadVariableOpReadVariableOp7gru_6_while_gru_cell_9_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02.
,gru_6/while/gru_cell_9/MatMul/ReadVariableOp?
gru_6/while/gru_cell_9/MatMulMatMul6gru_6/while/TensorArrayV2Read/TensorListGetItem:item:04gru_6/while/gru_cell_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_6/while/gru_cell_9/MatMul?
gru_6/while/gru_cell_9/BiasAddBiasAdd'gru_6/while/gru_cell_9/MatMul:product:0'gru_6/while/gru_cell_9/unstack:output:0*
T0*(
_output_shapes
:??????????2 
gru_6/while/gru_cell_9/BiasAdd?
&gru_6/while/gru_cell_9/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&gru_6/while/gru_cell_9/split/split_dim?
gru_6/while/gru_cell_9/splitSplit/gru_6/while/gru_cell_9/split/split_dim:output:0'gru_6/while/gru_cell_9/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_6/while/gru_cell_9/split?
.gru_6/while/gru_cell_9/MatMul_1/ReadVariableOpReadVariableOp9gru_6_while_gru_cell_9_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype020
.gru_6/while/gru_cell_9/MatMul_1/ReadVariableOp?
gru_6/while/gru_cell_9/MatMul_1MatMulgru_6_while_placeholder_26gru_6/while/gru_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
gru_6/while/gru_cell_9/MatMul_1?
 gru_6/while/gru_cell_9/BiasAdd_1BiasAdd)gru_6/while/gru_cell_9/MatMul_1:product:0'gru_6/while/gru_cell_9/unstack:output:1*
T0*(
_output_shapes
:??????????2"
 gru_6/while/gru_cell_9/BiasAdd_1?
gru_6/while/gru_cell_9/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
gru_6/while/gru_cell_9/Const?
(gru_6/while/gru_cell_9/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(gru_6/while/gru_cell_9/split_1/split_dim?
gru_6/while/gru_cell_9/split_1SplitV)gru_6/while/gru_cell_9/BiasAdd_1:output:0%gru_6/while/gru_cell_9/Const:output:01gru_6/while/gru_cell_9/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2 
gru_6/while/gru_cell_9/split_1?
gru_6/while/gru_cell_9/addAddV2%gru_6/while/gru_cell_9/split:output:0'gru_6/while/gru_cell_9/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_6/while/gru_cell_9/add?
gru_6/while/gru_cell_9/SigmoidSigmoidgru_6/while/gru_cell_9/add:z:0*
T0*(
_output_shapes
:??????????2 
gru_6/while/gru_cell_9/Sigmoid?
gru_6/while/gru_cell_9/add_1AddV2%gru_6/while/gru_cell_9/split:output:1'gru_6/while/gru_cell_9/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_6/while/gru_cell_9/add_1?
 gru_6/while/gru_cell_9/Sigmoid_1Sigmoid gru_6/while/gru_cell_9/add_1:z:0*
T0*(
_output_shapes
:??????????2"
 gru_6/while/gru_cell_9/Sigmoid_1?
gru_6/while/gru_cell_9/mulMul$gru_6/while/gru_cell_9/Sigmoid_1:y:0'gru_6/while/gru_cell_9/split_1:output:2*
T0*(
_output_shapes
:??????????2
gru_6/while/gru_cell_9/mul?
gru_6/while/gru_cell_9/add_2AddV2%gru_6/while/gru_cell_9/split:output:2gru_6/while/gru_cell_9/mul:z:0*
T0*(
_output_shapes
:??????????2
gru_6/while/gru_cell_9/add_2?
gru_6/while/gru_cell_9/ReluRelu gru_6/while/gru_cell_9/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_6/while/gru_cell_9/Relu?
gru_6/while/gru_cell_9/mul_1Mul"gru_6/while/gru_cell_9/Sigmoid:y:0gru_6_while_placeholder_2*
T0*(
_output_shapes
:??????????2
gru_6/while/gru_cell_9/mul_1?
gru_6/while/gru_cell_9/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_6/while/gru_cell_9/sub/x?
gru_6/while/gru_cell_9/subSub%gru_6/while/gru_cell_9/sub/x:output:0"gru_6/while/gru_cell_9/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_6/while/gru_cell_9/sub?
gru_6/while/gru_cell_9/mul_2Mulgru_6/while/gru_cell_9/sub:z:0)gru_6/while/gru_cell_9/Relu:activations:0*
T0*(
_output_shapes
:??????????2
gru_6/while/gru_cell_9/mul_2?
gru_6/while/gru_cell_9/add_3AddV2 gru_6/while/gru_cell_9/mul_1:z:0 gru_6/while/gru_cell_9/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_6/while/gru_cell_9/add_3?
0gru_6/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_6_while_placeholder_1gru_6_while_placeholder gru_6/while/gru_cell_9/add_3:z:0*
_output_shapes
: *
element_dtype022
0gru_6/while/TensorArrayV2Write/TensorListSetItemh
gru_6/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_6/while/add/y?
gru_6/while/addAddV2gru_6_while_placeholdergru_6/while/add/y:output:0*
T0*
_output_shapes
: 2
gru_6/while/addl
gru_6/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_6/while/add_1/y?
gru_6/while/add_1AddV2$gru_6_while_gru_6_while_loop_countergru_6/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru_6/while/add_1?
gru_6/while/IdentityIdentitygru_6/while/add_1:z:0^gru_6/while/NoOp*
T0*
_output_shapes
: 2
gru_6/while/Identity?
gru_6/while/Identity_1Identity*gru_6_while_gru_6_while_maximum_iterations^gru_6/while/NoOp*
T0*
_output_shapes
: 2
gru_6/while/Identity_1?
gru_6/while/Identity_2Identitygru_6/while/add:z:0^gru_6/while/NoOp*
T0*
_output_shapes
: 2
gru_6/while/Identity_2?
gru_6/while/Identity_3Identity@gru_6/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^gru_6/while/NoOp*
T0*
_output_shapes
: 2
gru_6/while/Identity_3?
gru_6/while/Identity_4Identity gru_6/while/gru_cell_9/add_3:z:0^gru_6/while/NoOp*
T0*(
_output_shapes
:??????????2
gru_6/while/Identity_4?
gru_6/while/NoOpNoOp-^gru_6/while/gru_cell_9/MatMul/ReadVariableOp/^gru_6/while/gru_cell_9/MatMul_1/ReadVariableOp&^gru_6/while/gru_cell_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
gru_6/while/NoOp"H
!gru_6_while_gru_6_strided_slice_1#gru_6_while_gru_6_strided_slice_1_0"t
7gru_6_while_gru_cell_9_matmul_1_readvariableop_resource9gru_6_while_gru_cell_9_matmul_1_readvariableop_resource_0"p
5gru_6_while_gru_cell_9_matmul_readvariableop_resource7gru_6_while_gru_cell_9_matmul_readvariableop_resource_0"b
.gru_6_while_gru_cell_9_readvariableop_resource0gru_6_while_gru_cell_9_readvariableop_resource_0"5
gru_6_while_identitygru_6/while/Identity:output:0"9
gru_6_while_identity_1gru_6/while/Identity_1:output:0"9
gru_6_while_identity_2gru_6/while/Identity_2:output:0"9
gru_6_while_identity_3gru_6/while/Identity_3:output:0"9
gru_6_while_identity_4gru_6/while/Identity_4:output:0"?
]gru_6_while_tensorarrayv2read_tensorlistgetitem_gru_6_tensorarrayunstack_tensorlistfromtensor_gru_6_while_tensorarrayv2read_tensorlistgetitem_gru_6_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2\
,gru_6/while/gru_cell_9/MatMul/ReadVariableOp,gru_6/while/gru_cell_9/MatMul/ReadVariableOp2`
.gru_6/while/gru_cell_9/MatMul_1/ReadVariableOp.gru_6/while/gru_cell_9/MatMul_1/ReadVariableOp2N
%gru_6/while/gru_cell_9/ReadVariableOp%gru_6/while/gru_cell_9/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
b
F__inference_lambda_11_layer_call_and_return_conditional_losses_2359925

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
?
?
while_cond_2360032
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_2360032___redundant_placeholder05
1while_while_cond_2360032___redundant_placeholder15
1while_while_cond_2360032___redundant_placeholder25
1while_while_cond_2360032___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?X
?
B__inference_gru_6_layer_call_and_return_conditional_losses_2360581

inputs5
"gru_cell_9_readvariableop_resource:	?<
)gru_cell_9_matmul_readvariableop_resource:	??
+gru_cell_9_matmul_1_readvariableop_resource:
??
identity?? gru_cell_9/MatMul/ReadVariableOp?"gru_cell_9/MatMul_1/ReadVariableOp?gru_cell_9/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicec
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
gru_cell_9/ReadVariableOpReadVariableOp"gru_cell_9_readvariableop_resource*
_output_shapes
:	?*
dtype02
gru_cell_9/ReadVariableOp?
gru_cell_9/unstackUnpack!gru_cell_9/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
gru_cell_9/unstack?
 gru_cell_9/MatMul/ReadVariableOpReadVariableOp)gru_cell_9_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02"
 gru_cell_9/MatMul/ReadVariableOp?
gru_cell_9/MatMulMatMulstrided_slice_2:output:0(gru_cell_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/MatMul?
gru_cell_9/BiasAddBiasAddgru_cell_9/MatMul:product:0gru_cell_9/unstack:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/BiasAdd?
gru_cell_9/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_9/split/split_dim?
gru_cell_9/splitSplit#gru_cell_9/split/split_dim:output:0gru_cell_9/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_cell_9/split?
"gru_cell_9/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_9_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02$
"gru_cell_9/MatMul_1/ReadVariableOp?
gru_cell_9/MatMul_1MatMulzeros:output:0*gru_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/MatMul_1?
gru_cell_9/BiasAdd_1BiasAddgru_cell_9/MatMul_1:product:0gru_cell_9/unstack:output:1*
T0*(
_output_shapes
:??????????2
gru_cell_9/BiasAdd_1y
gru_cell_9/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
gru_cell_9/Const?
gru_cell_9/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_9/split_1/split_dim?
gru_cell_9/split_1SplitVgru_cell_9/BiasAdd_1:output:0gru_cell_9/Const:output:0%gru_cell_9/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_cell_9/split_1?
gru_cell_9/addAddV2gru_cell_9/split:output:0gru_cell_9/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/addz
gru_cell_9/SigmoidSigmoidgru_cell_9/add:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/Sigmoid?
gru_cell_9/add_1AddV2gru_cell_9/split:output:1gru_cell_9/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_cell_9/add_1?
gru_cell_9/Sigmoid_1Sigmoidgru_cell_9/add_1:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/Sigmoid_1?
gru_cell_9/mulMulgru_cell_9/Sigmoid_1:y:0gru_cell_9/split_1:output:2*
T0*(
_output_shapes
:??????????2
gru_cell_9/mul?
gru_cell_9/add_2AddV2gru_cell_9/split:output:2gru_cell_9/mul:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/add_2s
gru_cell_9/ReluRelugru_cell_9/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/Relu?
gru_cell_9/mul_1Mulgru_cell_9/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/mul_1i
gru_cell_9/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_9/sub/x?
gru_cell_9/subSubgru_cell_9/sub/x:output:0gru_cell_9/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/sub?
gru_cell_9/mul_2Mulgru_cell_9/sub:z:0gru_cell_9/Relu:activations:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/mul_2?
gru_cell_9/add_3AddV2gru_cell_9/mul_1:z:0gru_cell_9/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_9/add_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0"gru_cell_9_readvariableop_resource)gru_cell_9_matmul_readvariableop_resource+gru_cell_9_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_2360492*
condR
while_cond_2360491*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimet
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp!^gru_cell_9/MatMul/ReadVariableOp#^gru_cell_9/MatMul_1/ReadVariableOp^gru_cell_9/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2D
 gru_cell_9/MatMul/ReadVariableOp gru_cell_9/MatMul/ReadVariableOp2H
"gru_cell_9/MatMul_1/ReadVariableOp"gru_cell_9/MatMul_1/ReadVariableOp26
gru_cell_9/ReadVariableOpgru_cell_9/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_2359263
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_2359263___redundant_placeholder05
1while_while_cond_2359263___redundant_placeholder15
1while_while_cond_2359263___redundant_placeholder25
1while_while_cond_2359263___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?w
?
H__inference_model_GRU_1_layer_call_and_return_conditional_losses_2359903

inputs;
(gru_6_gru_cell_9_readvariableop_resource:	?B
/gru_6_gru_cell_9_matmul_readvariableop_resource:	?E
1gru_6_gru_cell_9_matmul_1_readvariableop_resource:
??;
'dense_73_matmul_readvariableop_resource:
??7
(dense_73_biasadd_readvariableop_resource:	?:
'dense_74_matmul_readvariableop_resource:	?6
(dense_74_biasadd_readvariableop_resource:
identity??dense_73/BiasAdd/ReadVariableOp?dense_73/MatMul/ReadVariableOp?dense_74/BiasAdd/ReadVariableOp?dense_74/MatMul/ReadVariableOp?&gru_6/gru_cell_9/MatMul/ReadVariableOp?(gru_6/gru_cell_9/MatMul_1/ReadVariableOp?gru_6/gru_cell_9/ReadVariableOp?gru_6/whilev
lambda_11/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
lambda_11/ExpandDims/dim?
lambda_11/ExpandDims
ExpandDimsinputs!lambda_11/ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2
lambda_11/ExpandDimsg
gru_6/ShapeShapelambda_11/ExpandDims:output:0*
T0*
_output_shapes
:2
gru_6/Shape?
gru_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_6/strided_slice/stack?
gru_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_6/strided_slice/stack_1?
gru_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_6/strided_slice/stack_2?
gru_6/strided_sliceStridedSlicegru_6/Shape:output:0"gru_6/strided_slice/stack:output:0$gru_6/strided_slice/stack_1:output:0$gru_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_6/strided_sliceo
gru_6/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
gru_6/zeros/packed/1?
gru_6/zeros/packedPackgru_6/strided_slice:output:0gru_6/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
gru_6/zeros/packedk
gru_6/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_6/zeros/Const?
gru_6/zerosFillgru_6/zeros/packed:output:0gru_6/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
gru_6/zeros?
gru_6/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_6/transpose/perm?
gru_6/transpose	Transposelambda_11/ExpandDims:output:0gru_6/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
gru_6/transposea
gru_6/Shape_1Shapegru_6/transpose:y:0*
T0*
_output_shapes
:2
gru_6/Shape_1?
gru_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_6/strided_slice_1/stack?
gru_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_6/strided_slice_1/stack_1?
gru_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_6/strided_slice_1/stack_2?
gru_6/strided_slice_1StridedSlicegru_6/Shape_1:output:0$gru_6/strided_slice_1/stack:output:0&gru_6/strided_slice_1/stack_1:output:0&gru_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_6/strided_slice_1?
!gru_6/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2#
!gru_6/TensorArrayV2/element_shape?
gru_6/TensorArrayV2TensorListReserve*gru_6/TensorArrayV2/element_shape:output:0gru_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_6/TensorArrayV2?
;gru_6/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2=
;gru_6/TensorArrayUnstack/TensorListFromTensor/element_shape?
-gru_6/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_6/transpose:y:0Dgru_6/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02/
-gru_6/TensorArrayUnstack/TensorListFromTensor?
gru_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_6/strided_slice_2/stack?
gru_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_6/strided_slice_2/stack_1?
gru_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_6/strided_slice_2/stack_2?
gru_6/strided_slice_2StridedSlicegru_6/transpose:y:0$gru_6/strided_slice_2/stack:output:0&gru_6/strided_slice_2/stack_1:output:0&gru_6/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
gru_6/strided_slice_2?
gru_6/gru_cell_9/ReadVariableOpReadVariableOp(gru_6_gru_cell_9_readvariableop_resource*
_output_shapes
:	?*
dtype02!
gru_6/gru_cell_9/ReadVariableOp?
gru_6/gru_cell_9/unstackUnpack'gru_6/gru_cell_9/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
gru_6/gru_cell_9/unstack?
&gru_6/gru_cell_9/MatMul/ReadVariableOpReadVariableOp/gru_6_gru_cell_9_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02(
&gru_6/gru_cell_9/MatMul/ReadVariableOp?
gru_6/gru_cell_9/MatMulMatMulgru_6/strided_slice_2:output:0.gru_6/gru_cell_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_6/gru_cell_9/MatMul?
gru_6/gru_cell_9/BiasAddBiasAdd!gru_6/gru_cell_9/MatMul:product:0!gru_6/gru_cell_9/unstack:output:0*
T0*(
_output_shapes
:??????????2
gru_6/gru_cell_9/BiasAdd?
 gru_6/gru_cell_9/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 gru_6/gru_cell_9/split/split_dim?
gru_6/gru_cell_9/splitSplit)gru_6/gru_cell_9/split/split_dim:output:0!gru_6/gru_cell_9/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_6/gru_cell_9/split?
(gru_6/gru_cell_9/MatMul_1/ReadVariableOpReadVariableOp1gru_6_gru_cell_9_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02*
(gru_6/gru_cell_9/MatMul_1/ReadVariableOp?
gru_6/gru_cell_9/MatMul_1MatMulgru_6/zeros:output:00gru_6/gru_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_6/gru_cell_9/MatMul_1?
gru_6/gru_cell_9/BiasAdd_1BiasAdd#gru_6/gru_cell_9/MatMul_1:product:0!gru_6/gru_cell_9/unstack:output:1*
T0*(
_output_shapes
:??????????2
gru_6/gru_cell_9/BiasAdd_1?
gru_6/gru_cell_9/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
gru_6/gru_cell_9/Const?
"gru_6/gru_cell_9/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"gru_6/gru_cell_9/split_1/split_dim?
gru_6/gru_cell_9/split_1SplitV#gru_6/gru_cell_9/BiasAdd_1:output:0gru_6/gru_cell_9/Const:output:0+gru_6/gru_cell_9/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_6/gru_cell_9/split_1?
gru_6/gru_cell_9/addAddV2gru_6/gru_cell_9/split:output:0!gru_6/gru_cell_9/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_6/gru_cell_9/add?
gru_6/gru_cell_9/SigmoidSigmoidgru_6/gru_cell_9/add:z:0*
T0*(
_output_shapes
:??????????2
gru_6/gru_cell_9/Sigmoid?
gru_6/gru_cell_9/add_1AddV2gru_6/gru_cell_9/split:output:1!gru_6/gru_cell_9/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_6/gru_cell_9/add_1?
gru_6/gru_cell_9/Sigmoid_1Sigmoidgru_6/gru_cell_9/add_1:z:0*
T0*(
_output_shapes
:??????????2
gru_6/gru_cell_9/Sigmoid_1?
gru_6/gru_cell_9/mulMulgru_6/gru_cell_9/Sigmoid_1:y:0!gru_6/gru_cell_9/split_1:output:2*
T0*(
_output_shapes
:??????????2
gru_6/gru_cell_9/mul?
gru_6/gru_cell_9/add_2AddV2gru_6/gru_cell_9/split:output:2gru_6/gru_cell_9/mul:z:0*
T0*(
_output_shapes
:??????????2
gru_6/gru_cell_9/add_2?
gru_6/gru_cell_9/ReluRelugru_6/gru_cell_9/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_6/gru_cell_9/Relu?
gru_6/gru_cell_9/mul_1Mulgru_6/gru_cell_9/Sigmoid:y:0gru_6/zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_6/gru_cell_9/mul_1u
gru_6/gru_cell_9/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_6/gru_cell_9/sub/x?
gru_6/gru_cell_9/subSubgru_6/gru_cell_9/sub/x:output:0gru_6/gru_cell_9/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_6/gru_cell_9/sub?
gru_6/gru_cell_9/mul_2Mulgru_6/gru_cell_9/sub:z:0#gru_6/gru_cell_9/Relu:activations:0*
T0*(
_output_shapes
:??????????2
gru_6/gru_cell_9/mul_2?
gru_6/gru_cell_9/add_3AddV2gru_6/gru_cell_9/mul_1:z:0gru_6/gru_cell_9/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_6/gru_cell_9/add_3?
#gru_6/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2%
#gru_6/TensorArrayV2_1/element_shape?
gru_6/TensorArrayV2_1TensorListReserve,gru_6/TensorArrayV2_1/element_shape:output:0gru_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_6/TensorArrayV2_1Z

gru_6/timeConst*
_output_shapes
: *
dtype0*
value	B : 2

gru_6/time?
gru_6/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
gru_6/while/maximum_iterationsv
gru_6/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_6/while/loop_counter?
gru_6/whileWhile!gru_6/while/loop_counter:output:0'gru_6/while/maximum_iterations:output:0gru_6/time:output:0gru_6/TensorArrayV2_1:handle:0gru_6/zeros:output:0gru_6/strided_slice_1:output:0=gru_6/TensorArrayUnstack/TensorListFromTensor:output_handle:0(gru_6_gru_cell_9_readvariableop_resource/gru_6_gru_cell_9_matmul_readvariableop_resource1gru_6_gru_cell_9_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *$
bodyR
gru_6_while_body_2359801*$
condR
gru_6_while_cond_2359800*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations 2
gru_6/while?
6gru_6/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   28
6gru_6/TensorArrayV2Stack/TensorListStack/element_shape?
(gru_6/TensorArrayV2Stack/TensorListStackTensorListStackgru_6/while:output:3?gru_6/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02*
(gru_6/TensorArrayV2Stack/TensorListStack?
gru_6/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
gru_6/strided_slice_3/stack?
gru_6/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
gru_6/strided_slice_3/stack_1?
gru_6/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_6/strided_slice_3/stack_2?
gru_6/strided_slice_3StridedSlice1gru_6/TensorArrayV2Stack/TensorListStack:tensor:0$gru_6/strided_slice_3/stack:output:0&gru_6/strided_slice_3/stack_1:output:0&gru_6/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
gru_6/strided_slice_3?
gru_6/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_6/transpose_1/perm?
gru_6/transpose_1	Transpose1gru_6/TensorArrayV2Stack/TensorListStack:tensor:0gru_6/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
gru_6/transpose_1r
gru_6/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_6/runtime?
dense_73/MatMul/ReadVariableOpReadVariableOp'dense_73_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_73/MatMul/ReadVariableOp?
dense_73/MatMulMatMulgru_6/strided_slice_3:output:0&dense_73/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_73/MatMul?
dense_73/BiasAdd/ReadVariableOpReadVariableOp(dense_73_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_73/BiasAdd/ReadVariableOp?
dense_73/BiasAddBiasAdddense_73/MatMul:product:0'dense_73/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_73/BiasAddt
dense_73/ReluReludense_73/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_73/Relu?
dense_74/MatMul/ReadVariableOpReadVariableOp'dense_74_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02 
dense_74/MatMul/ReadVariableOp?
dense_74/MatMulMatMuldense_73/Relu:activations:0&dense_74/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_74/MatMul?
dense_74/BiasAdd/ReadVariableOpReadVariableOp(dense_74_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_74/BiasAdd/ReadVariableOp?
dense_74/BiasAddBiasAdddense_74/MatMul:product:0'dense_74/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_74/BiasAddt
IdentityIdentitydense_74/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp ^dense_73/BiasAdd/ReadVariableOp^dense_73/MatMul/ReadVariableOp ^dense_74/BiasAdd/ReadVariableOp^dense_74/MatMul/ReadVariableOp'^gru_6/gru_cell_9/MatMul/ReadVariableOp)^gru_6/gru_cell_9/MatMul_1/ReadVariableOp ^gru_6/gru_cell_9/ReadVariableOp^gru_6/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2B
dense_73/BiasAdd/ReadVariableOpdense_73/BiasAdd/ReadVariableOp2@
dense_73/MatMul/ReadVariableOpdense_73/MatMul/ReadVariableOp2B
dense_74/BiasAdd/ReadVariableOpdense_74/BiasAdd/ReadVariableOp2@
dense_74/MatMul/ReadVariableOpdense_74/MatMul/ReadVariableOp2P
&gru_6/gru_cell_9/MatMul/ReadVariableOp&gru_6/gru_cell_9/MatMul/ReadVariableOp2T
(gru_6/gru_cell_9/MatMul_1/ReadVariableOp(gru_6/gru_cell_9/MatMul_1/ReadVariableOp2B
gru_6/gru_cell_9/ReadVariableOpgru_6/gru_cell_9/ReadVariableOp2
gru_6/whilegru_6/while:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
b
F__inference_lambda_11_layer_call_and_return_conditional_losses_2359919

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
?
$model_GRU_1_gru_6_while_cond_2358272@
<model_gru_1_gru_6_while_model_gru_1_gru_6_while_loop_counterF
Bmodel_gru_1_gru_6_while_model_gru_1_gru_6_while_maximum_iterations'
#model_gru_1_gru_6_while_placeholder)
%model_gru_1_gru_6_while_placeholder_1)
%model_gru_1_gru_6_while_placeholder_2B
>model_gru_1_gru_6_while_less_model_gru_1_gru_6_strided_slice_1Y
Umodel_gru_1_gru_6_while_model_gru_1_gru_6_while_cond_2358272___redundant_placeholder0Y
Umodel_gru_1_gru_6_while_model_gru_1_gru_6_while_cond_2358272___redundant_placeholder1Y
Umodel_gru_1_gru_6_while_model_gru_1_gru_6_while_cond_2358272___redundant_placeholder2Y
Umodel_gru_1_gru_6_while_model_gru_1_gru_6_while_cond_2358272___redundant_placeholder3$
 model_gru_1_gru_6_while_identity
?
model_GRU_1/gru_6/while/LessLess#model_gru_1_gru_6_while_placeholder>model_gru_1_gru_6_while_less_model_gru_1_gru_6_strided_slice_1*
T0*
_output_shapes
: 2
model_GRU_1/gru_6/while/Less?
 model_GRU_1/gru_6/while/IdentityIdentity model_GRU_1/gru_6/while/Less:z:0*
T0
*
_output_shapes
: 2"
 model_GRU_1/gru_6/while/Identity"M
 model_gru_1_gru_6_while_identity)model_GRU_1/gru_6/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_2358650
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_2358650___redundant_placeholder05
1while_while_cond_2358650___redundant_placeholder15
1while_while_cond_2358650___redundant_placeholder25
1while_while_cond_2358650___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_2360338
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_2360338___redundant_placeholder05
1while_while_cond_2360338___redundant_placeholder15
1while_while_cond_2360338___redundant_placeholder25
1while_while_cond_2360338___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
E__inference_dense_73_layer_call_and_return_conditional_losses_2360601

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
while_cond_2360491
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_2360491___redundant_placeholder05
1while_while_cond_2360491___redundant_placeholder15
1while_while_cond_2360491___redundant_placeholder25
1while_while_cond_2360491___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?N
?	
gru_6_while_body_2359633(
$gru_6_while_gru_6_while_loop_counter.
*gru_6_while_gru_6_while_maximum_iterations
gru_6_while_placeholder
gru_6_while_placeholder_1
gru_6_while_placeholder_2'
#gru_6_while_gru_6_strided_slice_1_0c
_gru_6_while_tensorarrayv2read_tensorlistgetitem_gru_6_tensorarrayunstack_tensorlistfromtensor_0C
0gru_6_while_gru_cell_9_readvariableop_resource_0:	?J
7gru_6_while_gru_cell_9_matmul_readvariableop_resource_0:	?M
9gru_6_while_gru_cell_9_matmul_1_readvariableop_resource_0:
??
gru_6_while_identity
gru_6_while_identity_1
gru_6_while_identity_2
gru_6_while_identity_3
gru_6_while_identity_4%
!gru_6_while_gru_6_strided_slice_1a
]gru_6_while_tensorarrayv2read_tensorlistgetitem_gru_6_tensorarrayunstack_tensorlistfromtensorA
.gru_6_while_gru_cell_9_readvariableop_resource:	?H
5gru_6_while_gru_cell_9_matmul_readvariableop_resource:	?K
7gru_6_while_gru_cell_9_matmul_1_readvariableop_resource:
????,gru_6/while/gru_cell_9/MatMul/ReadVariableOp?.gru_6/while/gru_cell_9/MatMul_1/ReadVariableOp?%gru_6/while/gru_cell_9/ReadVariableOp?
=gru_6/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2?
=gru_6/while/TensorArrayV2Read/TensorListGetItem/element_shape?
/gru_6/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_gru_6_while_tensorarrayv2read_tensorlistgetitem_gru_6_tensorarrayunstack_tensorlistfromtensor_0gru_6_while_placeholderFgru_6/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype021
/gru_6/while/TensorArrayV2Read/TensorListGetItem?
%gru_6/while/gru_cell_9/ReadVariableOpReadVariableOp0gru_6_while_gru_cell_9_readvariableop_resource_0*
_output_shapes
:	?*
dtype02'
%gru_6/while/gru_cell_9/ReadVariableOp?
gru_6/while/gru_cell_9/unstackUnpack-gru_6/while/gru_cell_9/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2 
gru_6/while/gru_cell_9/unstack?
,gru_6/while/gru_cell_9/MatMul/ReadVariableOpReadVariableOp7gru_6_while_gru_cell_9_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02.
,gru_6/while/gru_cell_9/MatMul/ReadVariableOp?
gru_6/while/gru_cell_9/MatMulMatMul6gru_6/while/TensorArrayV2Read/TensorListGetItem:item:04gru_6/while/gru_cell_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_6/while/gru_cell_9/MatMul?
gru_6/while/gru_cell_9/BiasAddBiasAdd'gru_6/while/gru_cell_9/MatMul:product:0'gru_6/while/gru_cell_9/unstack:output:0*
T0*(
_output_shapes
:??????????2 
gru_6/while/gru_cell_9/BiasAdd?
&gru_6/while/gru_cell_9/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&gru_6/while/gru_cell_9/split/split_dim?
gru_6/while/gru_cell_9/splitSplit/gru_6/while/gru_cell_9/split/split_dim:output:0'gru_6/while/gru_cell_9/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_6/while/gru_cell_9/split?
.gru_6/while/gru_cell_9/MatMul_1/ReadVariableOpReadVariableOp9gru_6_while_gru_cell_9_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype020
.gru_6/while/gru_cell_9/MatMul_1/ReadVariableOp?
gru_6/while/gru_cell_9/MatMul_1MatMulgru_6_while_placeholder_26gru_6/while/gru_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
gru_6/while/gru_cell_9/MatMul_1?
 gru_6/while/gru_cell_9/BiasAdd_1BiasAdd)gru_6/while/gru_cell_9/MatMul_1:product:0'gru_6/while/gru_cell_9/unstack:output:1*
T0*(
_output_shapes
:??????????2"
 gru_6/while/gru_cell_9/BiasAdd_1?
gru_6/while/gru_cell_9/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
gru_6/while/gru_cell_9/Const?
(gru_6/while/gru_cell_9/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(gru_6/while/gru_cell_9/split_1/split_dim?
gru_6/while/gru_cell_9/split_1SplitV)gru_6/while/gru_cell_9/BiasAdd_1:output:0%gru_6/while/gru_cell_9/Const:output:01gru_6/while/gru_cell_9/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2 
gru_6/while/gru_cell_9/split_1?
gru_6/while/gru_cell_9/addAddV2%gru_6/while/gru_cell_9/split:output:0'gru_6/while/gru_cell_9/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_6/while/gru_cell_9/add?
gru_6/while/gru_cell_9/SigmoidSigmoidgru_6/while/gru_cell_9/add:z:0*
T0*(
_output_shapes
:??????????2 
gru_6/while/gru_cell_9/Sigmoid?
gru_6/while/gru_cell_9/add_1AddV2%gru_6/while/gru_cell_9/split:output:1'gru_6/while/gru_cell_9/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_6/while/gru_cell_9/add_1?
 gru_6/while/gru_cell_9/Sigmoid_1Sigmoid gru_6/while/gru_cell_9/add_1:z:0*
T0*(
_output_shapes
:??????????2"
 gru_6/while/gru_cell_9/Sigmoid_1?
gru_6/while/gru_cell_9/mulMul$gru_6/while/gru_cell_9/Sigmoid_1:y:0'gru_6/while/gru_cell_9/split_1:output:2*
T0*(
_output_shapes
:??????????2
gru_6/while/gru_cell_9/mul?
gru_6/while/gru_cell_9/add_2AddV2%gru_6/while/gru_cell_9/split:output:2gru_6/while/gru_cell_9/mul:z:0*
T0*(
_output_shapes
:??????????2
gru_6/while/gru_cell_9/add_2?
gru_6/while/gru_cell_9/ReluRelu gru_6/while/gru_cell_9/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_6/while/gru_cell_9/Relu?
gru_6/while/gru_cell_9/mul_1Mul"gru_6/while/gru_cell_9/Sigmoid:y:0gru_6_while_placeholder_2*
T0*(
_output_shapes
:??????????2
gru_6/while/gru_cell_9/mul_1?
gru_6/while/gru_cell_9/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_6/while/gru_cell_9/sub/x?
gru_6/while/gru_cell_9/subSub%gru_6/while/gru_cell_9/sub/x:output:0"gru_6/while/gru_cell_9/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_6/while/gru_cell_9/sub?
gru_6/while/gru_cell_9/mul_2Mulgru_6/while/gru_cell_9/sub:z:0)gru_6/while/gru_cell_9/Relu:activations:0*
T0*(
_output_shapes
:??????????2
gru_6/while/gru_cell_9/mul_2?
gru_6/while/gru_cell_9/add_3AddV2 gru_6/while/gru_cell_9/mul_1:z:0 gru_6/while/gru_cell_9/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_6/while/gru_cell_9/add_3?
0gru_6/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_6_while_placeholder_1gru_6_while_placeholder gru_6/while/gru_cell_9/add_3:z:0*
_output_shapes
: *
element_dtype022
0gru_6/while/TensorArrayV2Write/TensorListSetItemh
gru_6/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_6/while/add/y?
gru_6/while/addAddV2gru_6_while_placeholdergru_6/while/add/y:output:0*
T0*
_output_shapes
: 2
gru_6/while/addl
gru_6/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_6/while/add_1/y?
gru_6/while/add_1AddV2$gru_6_while_gru_6_while_loop_countergru_6/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru_6/while/add_1?
gru_6/while/IdentityIdentitygru_6/while/add_1:z:0^gru_6/while/NoOp*
T0*
_output_shapes
: 2
gru_6/while/Identity?
gru_6/while/Identity_1Identity*gru_6_while_gru_6_while_maximum_iterations^gru_6/while/NoOp*
T0*
_output_shapes
: 2
gru_6/while/Identity_1?
gru_6/while/Identity_2Identitygru_6/while/add:z:0^gru_6/while/NoOp*
T0*
_output_shapes
: 2
gru_6/while/Identity_2?
gru_6/while/Identity_3Identity@gru_6/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^gru_6/while/NoOp*
T0*
_output_shapes
: 2
gru_6/while/Identity_3?
gru_6/while/Identity_4Identity gru_6/while/gru_cell_9/add_3:z:0^gru_6/while/NoOp*
T0*(
_output_shapes
:??????????2
gru_6/while/Identity_4?
gru_6/while/NoOpNoOp-^gru_6/while/gru_cell_9/MatMul/ReadVariableOp/^gru_6/while/gru_cell_9/MatMul_1/ReadVariableOp&^gru_6/while/gru_cell_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
gru_6/while/NoOp"H
!gru_6_while_gru_6_strided_slice_1#gru_6_while_gru_6_strided_slice_1_0"t
7gru_6_while_gru_cell_9_matmul_1_readvariableop_resource9gru_6_while_gru_cell_9_matmul_1_readvariableop_resource_0"p
5gru_6_while_gru_cell_9_matmul_readvariableop_resource7gru_6_while_gru_cell_9_matmul_readvariableop_resource_0"b
.gru_6_while_gru_cell_9_readvariableop_resource0gru_6_while_gru_cell_9_readvariableop_resource_0"5
gru_6_while_identitygru_6/while/Identity:output:0"9
gru_6_while_identity_1gru_6/while/Identity_1:output:0"9
gru_6_while_identity_2gru_6/while/Identity_2:output:0"9
gru_6_while_identity_3gru_6/while/Identity_3:output:0"9
gru_6_while_identity_4gru_6/while/Identity_4:output:0"?
]gru_6_while_tensorarrayv2read_tensorlistgetitem_gru_6_tensorarrayunstack_tensorlistfromtensor_gru_6_while_tensorarrayv2read_tensorlistgetitem_gru_6_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2\
,gru_6/while/gru_cell_9/MatMul/ReadVariableOp,gru_6/while/gru_cell_9/MatMul/ReadVariableOp2`
.gru_6/while/gru_cell_9/MatMul_1/ReadVariableOp.gru_6/while/gru_cell_9/MatMul_1/ReadVariableOp2N
%gru_6/while/gru_cell_9/ReadVariableOp%gru_6/while/gru_cell_9/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
*__inference_dense_73_layer_call_fn_2360590

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_73_layer_call_and_return_conditional_losses_23591272
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
,__inference_gru_cell_9_layer_call_fn_2360648

inputs
states_0
unknown:	?
	unknown_0:	?
	unknown_1:
??
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_gru_cell_9_layer_call_and_return_conditional_losses_23585882
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:??????????2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0
?w
?
H__inference_model_GRU_1_layer_call_and_return_conditional_losses_2359735

inputs;
(gru_6_gru_cell_9_readvariableop_resource:	?B
/gru_6_gru_cell_9_matmul_readvariableop_resource:	?E
1gru_6_gru_cell_9_matmul_1_readvariableop_resource:
??;
'dense_73_matmul_readvariableop_resource:
??7
(dense_73_biasadd_readvariableop_resource:	?:
'dense_74_matmul_readvariableop_resource:	?6
(dense_74_biasadd_readvariableop_resource:
identity??dense_73/BiasAdd/ReadVariableOp?dense_73/MatMul/ReadVariableOp?dense_74/BiasAdd/ReadVariableOp?dense_74/MatMul/ReadVariableOp?&gru_6/gru_cell_9/MatMul/ReadVariableOp?(gru_6/gru_cell_9/MatMul_1/ReadVariableOp?gru_6/gru_cell_9/ReadVariableOp?gru_6/whilev
lambda_11/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
lambda_11/ExpandDims/dim?
lambda_11/ExpandDims
ExpandDimsinputs!lambda_11/ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2
lambda_11/ExpandDimsg
gru_6/ShapeShapelambda_11/ExpandDims:output:0*
T0*
_output_shapes
:2
gru_6/Shape?
gru_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_6/strided_slice/stack?
gru_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_6/strided_slice/stack_1?
gru_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_6/strided_slice/stack_2?
gru_6/strided_sliceStridedSlicegru_6/Shape:output:0"gru_6/strided_slice/stack:output:0$gru_6/strided_slice/stack_1:output:0$gru_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_6/strided_sliceo
gru_6/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
gru_6/zeros/packed/1?
gru_6/zeros/packedPackgru_6/strided_slice:output:0gru_6/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
gru_6/zeros/packedk
gru_6/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_6/zeros/Const?
gru_6/zerosFillgru_6/zeros/packed:output:0gru_6/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
gru_6/zeros?
gru_6/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_6/transpose/perm?
gru_6/transpose	Transposelambda_11/ExpandDims:output:0gru_6/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
gru_6/transposea
gru_6/Shape_1Shapegru_6/transpose:y:0*
T0*
_output_shapes
:2
gru_6/Shape_1?
gru_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_6/strided_slice_1/stack?
gru_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_6/strided_slice_1/stack_1?
gru_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_6/strided_slice_1/stack_2?
gru_6/strided_slice_1StridedSlicegru_6/Shape_1:output:0$gru_6/strided_slice_1/stack:output:0&gru_6/strided_slice_1/stack_1:output:0&gru_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_6/strided_slice_1?
!gru_6/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2#
!gru_6/TensorArrayV2/element_shape?
gru_6/TensorArrayV2TensorListReserve*gru_6/TensorArrayV2/element_shape:output:0gru_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_6/TensorArrayV2?
;gru_6/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2=
;gru_6/TensorArrayUnstack/TensorListFromTensor/element_shape?
-gru_6/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_6/transpose:y:0Dgru_6/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02/
-gru_6/TensorArrayUnstack/TensorListFromTensor?
gru_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_6/strided_slice_2/stack?
gru_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_6/strided_slice_2/stack_1?
gru_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_6/strided_slice_2/stack_2?
gru_6/strided_slice_2StridedSlicegru_6/transpose:y:0$gru_6/strided_slice_2/stack:output:0&gru_6/strided_slice_2/stack_1:output:0&gru_6/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
gru_6/strided_slice_2?
gru_6/gru_cell_9/ReadVariableOpReadVariableOp(gru_6_gru_cell_9_readvariableop_resource*
_output_shapes
:	?*
dtype02!
gru_6/gru_cell_9/ReadVariableOp?
gru_6/gru_cell_9/unstackUnpack'gru_6/gru_cell_9/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
gru_6/gru_cell_9/unstack?
&gru_6/gru_cell_9/MatMul/ReadVariableOpReadVariableOp/gru_6_gru_cell_9_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02(
&gru_6/gru_cell_9/MatMul/ReadVariableOp?
gru_6/gru_cell_9/MatMulMatMulgru_6/strided_slice_2:output:0.gru_6/gru_cell_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_6/gru_cell_9/MatMul?
gru_6/gru_cell_9/BiasAddBiasAdd!gru_6/gru_cell_9/MatMul:product:0!gru_6/gru_cell_9/unstack:output:0*
T0*(
_output_shapes
:??????????2
gru_6/gru_cell_9/BiasAdd?
 gru_6/gru_cell_9/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 gru_6/gru_cell_9/split/split_dim?
gru_6/gru_cell_9/splitSplit)gru_6/gru_cell_9/split/split_dim:output:0!gru_6/gru_cell_9/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_6/gru_cell_9/split?
(gru_6/gru_cell_9/MatMul_1/ReadVariableOpReadVariableOp1gru_6_gru_cell_9_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02*
(gru_6/gru_cell_9/MatMul_1/ReadVariableOp?
gru_6/gru_cell_9/MatMul_1MatMulgru_6/zeros:output:00gru_6/gru_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_6/gru_cell_9/MatMul_1?
gru_6/gru_cell_9/BiasAdd_1BiasAdd#gru_6/gru_cell_9/MatMul_1:product:0!gru_6/gru_cell_9/unstack:output:1*
T0*(
_output_shapes
:??????????2
gru_6/gru_cell_9/BiasAdd_1?
gru_6/gru_cell_9/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
gru_6/gru_cell_9/Const?
"gru_6/gru_cell_9/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"gru_6/gru_cell_9/split_1/split_dim?
gru_6/gru_cell_9/split_1SplitV#gru_6/gru_cell_9/BiasAdd_1:output:0gru_6/gru_cell_9/Const:output:0+gru_6/gru_cell_9/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_6/gru_cell_9/split_1?
gru_6/gru_cell_9/addAddV2gru_6/gru_cell_9/split:output:0!gru_6/gru_cell_9/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_6/gru_cell_9/add?
gru_6/gru_cell_9/SigmoidSigmoidgru_6/gru_cell_9/add:z:0*
T0*(
_output_shapes
:??????????2
gru_6/gru_cell_9/Sigmoid?
gru_6/gru_cell_9/add_1AddV2gru_6/gru_cell_9/split:output:1!gru_6/gru_cell_9/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_6/gru_cell_9/add_1?
gru_6/gru_cell_9/Sigmoid_1Sigmoidgru_6/gru_cell_9/add_1:z:0*
T0*(
_output_shapes
:??????????2
gru_6/gru_cell_9/Sigmoid_1?
gru_6/gru_cell_9/mulMulgru_6/gru_cell_9/Sigmoid_1:y:0!gru_6/gru_cell_9/split_1:output:2*
T0*(
_output_shapes
:??????????2
gru_6/gru_cell_9/mul?
gru_6/gru_cell_9/add_2AddV2gru_6/gru_cell_9/split:output:2gru_6/gru_cell_9/mul:z:0*
T0*(
_output_shapes
:??????????2
gru_6/gru_cell_9/add_2?
gru_6/gru_cell_9/ReluRelugru_6/gru_cell_9/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_6/gru_cell_9/Relu?
gru_6/gru_cell_9/mul_1Mulgru_6/gru_cell_9/Sigmoid:y:0gru_6/zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_6/gru_cell_9/mul_1u
gru_6/gru_cell_9/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_6/gru_cell_9/sub/x?
gru_6/gru_cell_9/subSubgru_6/gru_cell_9/sub/x:output:0gru_6/gru_cell_9/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_6/gru_cell_9/sub?
gru_6/gru_cell_9/mul_2Mulgru_6/gru_cell_9/sub:z:0#gru_6/gru_cell_9/Relu:activations:0*
T0*(
_output_shapes
:??????????2
gru_6/gru_cell_9/mul_2?
gru_6/gru_cell_9/add_3AddV2gru_6/gru_cell_9/mul_1:z:0gru_6/gru_cell_9/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_6/gru_cell_9/add_3?
#gru_6/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2%
#gru_6/TensorArrayV2_1/element_shape?
gru_6/TensorArrayV2_1TensorListReserve,gru_6/TensorArrayV2_1/element_shape:output:0gru_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_6/TensorArrayV2_1Z

gru_6/timeConst*
_output_shapes
: *
dtype0*
value	B : 2

gru_6/time?
gru_6/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
gru_6/while/maximum_iterationsv
gru_6/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_6/while/loop_counter?
gru_6/whileWhile!gru_6/while/loop_counter:output:0'gru_6/while/maximum_iterations:output:0gru_6/time:output:0gru_6/TensorArrayV2_1:handle:0gru_6/zeros:output:0gru_6/strided_slice_1:output:0=gru_6/TensorArrayUnstack/TensorListFromTensor:output_handle:0(gru_6_gru_cell_9_readvariableop_resource/gru_6_gru_cell_9_matmul_readvariableop_resource1gru_6_gru_cell_9_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *$
bodyR
gru_6_while_body_2359633*$
condR
gru_6_while_cond_2359632*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations 2
gru_6/while?
6gru_6/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   28
6gru_6/TensorArrayV2Stack/TensorListStack/element_shape?
(gru_6/TensorArrayV2Stack/TensorListStackTensorListStackgru_6/while:output:3?gru_6/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02*
(gru_6/TensorArrayV2Stack/TensorListStack?
gru_6/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
gru_6/strided_slice_3/stack?
gru_6/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
gru_6/strided_slice_3/stack_1?
gru_6/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_6/strided_slice_3/stack_2?
gru_6/strided_slice_3StridedSlice1gru_6/TensorArrayV2Stack/TensorListStack:tensor:0$gru_6/strided_slice_3/stack:output:0&gru_6/strided_slice_3/stack_1:output:0&gru_6/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
gru_6/strided_slice_3?
gru_6/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_6/transpose_1/perm?
gru_6/transpose_1	Transpose1gru_6/TensorArrayV2Stack/TensorListStack:tensor:0gru_6/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
gru_6/transpose_1r
gru_6/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_6/runtime?
dense_73/MatMul/ReadVariableOpReadVariableOp'dense_73_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_73/MatMul/ReadVariableOp?
dense_73/MatMulMatMulgru_6/strided_slice_3:output:0&dense_73/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_73/MatMul?
dense_73/BiasAdd/ReadVariableOpReadVariableOp(dense_73_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_73/BiasAdd/ReadVariableOp?
dense_73/BiasAddBiasAdddense_73/MatMul:product:0'dense_73/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_73/BiasAddt
dense_73/ReluReludense_73/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_73/Relu?
dense_74/MatMul/ReadVariableOpReadVariableOp'dense_74_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02 
dense_74/MatMul/ReadVariableOp?
dense_74/MatMulMatMuldense_73/Relu:activations:0&dense_74/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_74/MatMul?
dense_74/BiasAdd/ReadVariableOpReadVariableOp(dense_74_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_74/BiasAdd/ReadVariableOp?
dense_74/BiasAddBiasAdddense_74/MatMul:product:0'dense_74/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_74/BiasAddt
IdentityIdentitydense_74/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp ^dense_73/BiasAdd/ReadVariableOp^dense_73/MatMul/ReadVariableOp ^dense_74/BiasAdd/ReadVariableOp^dense_74/MatMul/ReadVariableOp'^gru_6/gru_cell_9/MatMul/ReadVariableOp)^gru_6/gru_cell_9/MatMul_1/ReadVariableOp ^gru_6/gru_cell_9/ReadVariableOp^gru_6/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2B
dense_73/BiasAdd/ReadVariableOpdense_73/BiasAdd/ReadVariableOp2@
dense_73/MatMul/ReadVariableOpdense_73/MatMul/ReadVariableOp2B
dense_74/BiasAdd/ReadVariableOpdense_74/BiasAdd/ReadVariableOp2@
dense_74/MatMul/ReadVariableOpdense_74/MatMul/ReadVariableOp2P
&gru_6/gru_cell_9/MatMul/ReadVariableOp&gru_6/gru_cell_9/MatMul/ReadVariableOp2T
(gru_6/gru_cell_9/MatMul_1/ReadVariableOp(gru_6/gru_cell_9/MatMul_1/ReadVariableOp2B
gru_6/gru_cell_9/ReadVariableOpgru_6/gru_cell_9/ReadVariableOp2
gru_6/whilegru_6/while:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
G__inference_gru_cell_9_layer_call_and_return_conditional_losses_2360687

inputs
states_0*
readvariableop_resource:	?1
matmul_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??
identity

identity_1??MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?ReadVariableOpy
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	?*
dtype02
ReadVariableOpl
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2	
unstack?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:??????????2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
split?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:??????????2
	BiasAdd_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split_1/split_dim?
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2	
split_1h
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:??????????2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:??????????2	
Sigmoidl
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:??????????2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_1e
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:??????????2
mulc
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:??????????2
add_2R
ReluRelu	add_2:z:0*
T0*(
_output_shapes
:??????????2
Relu_
mul_1MulSigmoid:y:0states_0*
T0*(
_output_shapes
:??????????2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/xa
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
sube
mul_2Mulsub:z:0Relu:activations:0*
T0*(
_output_shapes
:??????????2
mul_2`
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:??????????2
add_3e
IdentityIdentity	add_3:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityi

Identity_1Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity_1?
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????:??????????: : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0
?
?
H__inference_model_GRU_1_layer_call_and_return_conditional_losses_2359502
lambda_11_input 
gru_6_2359484:	? 
gru_6_2359486:	?!
gru_6_2359488:
??$
dense_73_2359491:
??
dense_73_2359493:	?#
dense_74_2359496:	?
dense_74_2359498:
identity?? dense_73/StatefulPartitionedCall? dense_74/StatefulPartitionedCall?gru_6/StatefulPartitionedCall?
lambda_11/PartitionedCallPartitionedCalllambda_11_input*
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
F__inference_lambda_11_layer_call_and_return_conditional_losses_23593762
lambda_11/PartitionedCall?
gru_6/StatefulPartitionedCallStatefulPartitionedCall"lambda_11/PartitionedCall:output:0gru_6_2359484gru_6_2359486gru_6_2359488*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_gru_6_layer_call_and_return_conditional_losses_23593532
gru_6/StatefulPartitionedCall?
 dense_73/StatefulPartitionedCallStatefulPartitionedCall&gru_6/StatefulPartitionedCall:output:0dense_73_2359491dense_73_2359493*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_73_layer_call_and_return_conditional_losses_23591272"
 dense_73/StatefulPartitionedCall?
 dense_74/StatefulPartitionedCallStatefulPartitionedCall)dense_73/StatefulPartitionedCall:output:0dense_74_2359496dense_74_2359498*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_74_layer_call_and_return_conditional_losses_23591432"
 dense_74/StatefulPartitionedCall?
IdentityIdentity)dense_74/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^dense_73/StatefulPartitionedCall!^dense_74/StatefulPartitionedCall^gru_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 2D
 dense_73/StatefulPartitionedCall dense_73/StatefulPartitionedCall2D
 dense_74/StatefulPartitionedCall dense_74/StatefulPartitionedCall2>
gru_6/StatefulPartitionedCallgru_6/StatefulPartitionedCall:X T
'
_output_shapes
:?????????
)
_user_specified_namelambda_11_input
?	
?
-__inference_model_GRU_1_layer_call_fn_2359167
lambda_11_input
unknown:	?
	unknown_0:	?
	unknown_1:
??
	unknown_2:
??
	unknown_3:	?
	unknown_4:	?
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllambda_11_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*)
_read_only_resource_inputs
	*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_model_GRU_1_layer_call_and_return_conditional_losses_23591502
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:?????????
)
_user_specified_namelambda_11_input
??
?
#__inference__traced_restore_2360939
file_prefix4
 assignvariableop_dense_73_kernel:
??/
 assignvariableop_1_dense_73_bias:	?5
"assignvariableop_2_dense_74_kernel:	?.
 assignvariableop_3_dense_74_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: =
*assignvariableop_9_gru_6_gru_cell_9_kernel:	?I
5assignvariableop_10_gru_6_gru_cell_9_recurrent_kernel:
??<
)assignvariableop_11_gru_6_gru_cell_9_bias:	?#
assignvariableop_12_total: #
assignvariableop_13_count: %
assignvariableop_14_total_1: %
assignvariableop_15_count_1: >
*assignvariableop_16_adam_dense_73_kernel_m:
??7
(assignvariableop_17_adam_dense_73_bias_m:	?=
*assignvariableop_18_adam_dense_74_kernel_m:	?6
(assignvariableop_19_adam_dense_74_bias_m:E
2assignvariableop_20_adam_gru_6_gru_cell_9_kernel_m:	?P
<assignvariableop_21_adam_gru_6_gru_cell_9_recurrent_kernel_m:
??C
0assignvariableop_22_adam_gru_6_gru_cell_9_bias_m:	?>
*assignvariableop_23_adam_dense_73_kernel_v:
??7
(assignvariableop_24_adam_dense_73_bias_v:	?=
*assignvariableop_25_adam_dense_74_kernel_v:	?6
(assignvariableop_26_adam_dense_74_bias_v:E
2assignvariableop_27_adam_gru_6_gru_cell_9_kernel_v:	?P
<assignvariableop_28_adam_gru_6_gru_cell_9_recurrent_kernel_v:
??C
0assignvariableop_29_adam_gru_6_gru_cell_9_bias_v:	?
identity_31??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes~
|:::::::::::::::::::::::::::::::*-
dtypes#
!2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp assignvariableop_dense_73_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_73_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_74_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_74_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp*assignvariableop_9_gru_6_gru_cell_9_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp5assignvariableop_10_gru_6_gru_cell_9_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp)assignvariableop_11_gru_6_gru_cell_9_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_totalIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_countIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_total_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_count_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_dense_73_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp(assignvariableop_17_adam_dense_73_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_74_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_74_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp2assignvariableop_20_adam_gru_6_gru_cell_9_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp<assignvariableop_21_adam_gru_6_gru_cell_9_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp0assignvariableop_22_adam_gru_6_gru_cell_9_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_73_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_73_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_74_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_74_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp2assignvariableop_27_adam_gru_6_gru_cell_9_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp<assignvariableop_28_adam_gru_6_gru_cell_9_recurrent_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp0assignvariableop_29_adam_gru_6_gru_cell_9_bias_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_299
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_30Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_30f
Identity_31IdentityIdentity_30:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_31?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_31Identity_31:output:0*Q
_input_shapes@
>: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
?D
?
while_body_2360492
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
*while_gru_cell_9_readvariableop_resource_0:	?D
1while_gru_cell_9_matmul_readvariableop_resource_0:	?G
3while_gru_cell_9_matmul_1_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
(while_gru_cell_9_readvariableop_resource:	?B
/while_gru_cell_9_matmul_readvariableop_resource:	?E
1while_gru_cell_9_matmul_1_readvariableop_resource:
????&while/gru_cell_9/MatMul/ReadVariableOp?(while/gru_cell_9/MatMul_1/ReadVariableOp?while/gru_cell_9/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/gru_cell_9/ReadVariableOpReadVariableOp*while_gru_cell_9_readvariableop_resource_0*
_output_shapes
:	?*
dtype02!
while/gru_cell_9/ReadVariableOp?
while/gru_cell_9/unstackUnpack'while/gru_cell_9/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
while/gru_cell_9/unstack?
&while/gru_cell_9/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_9_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02(
&while/gru_cell_9/MatMul/ReadVariableOp?
while/gru_cell_9/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/MatMul?
while/gru_cell_9/BiasAddBiasAdd!while/gru_cell_9/MatMul:product:0!while/gru_cell_9/unstack:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/BiasAdd?
 while/gru_cell_9/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 while/gru_cell_9/split/split_dim?
while/gru_cell_9/splitSplit)while/gru_cell_9/split/split_dim:output:0!while/gru_cell_9/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/gru_cell_9/split?
(while/gru_cell_9/MatMul_1/ReadVariableOpReadVariableOp3while_gru_cell_9_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02*
(while/gru_cell_9/MatMul_1/ReadVariableOp?
while/gru_cell_9/MatMul_1MatMulwhile_placeholder_20while/gru_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/MatMul_1?
while/gru_cell_9/BiasAdd_1BiasAdd#while/gru_cell_9/MatMul_1:product:0!while/gru_cell_9/unstack:output:1*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/BiasAdd_1?
while/gru_cell_9/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
while/gru_cell_9/Const?
"while/gru_cell_9/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"while/gru_cell_9/split_1/split_dim?
while/gru_cell_9/split_1SplitV#while/gru_cell_9/BiasAdd_1:output:0while/gru_cell_9/Const:output:0+while/gru_cell_9/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/gru_cell_9/split_1?
while/gru_cell_9/addAddV2while/gru_cell_9/split:output:0!while/gru_cell_9/split_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/add?
while/gru_cell_9/SigmoidSigmoidwhile/gru_cell_9/add:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/Sigmoid?
while/gru_cell_9/add_1AddV2while/gru_cell_9/split:output:1!while/gru_cell_9/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/add_1?
while/gru_cell_9/Sigmoid_1Sigmoidwhile/gru_cell_9/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/Sigmoid_1?
while/gru_cell_9/mulMulwhile/gru_cell_9/Sigmoid_1:y:0!while/gru_cell_9/split_1:output:2*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/mul?
while/gru_cell_9/add_2AddV2while/gru_cell_9/split:output:2while/gru_cell_9/mul:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/add_2?
while/gru_cell_9/ReluReluwhile/gru_cell_9/add_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/Relu?
while/gru_cell_9/mul_1Mulwhile/gru_cell_9/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/mul_1u
while/gru_cell_9/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell_9/sub/x?
while/gru_cell_9/subSubwhile/gru_cell_9/sub/x:output:0while/gru_cell_9/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/sub?
while/gru_cell_9/mul_2Mulwhile/gru_cell_9/sub:z:0#while/gru_cell_9/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/mul_2?
while/gru_cell_9/add_3AddV2while/gru_cell_9/mul_1:z:0while/gru_cell_9/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_9/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell_9/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?

while/NoOpNoOp'^while/gru_cell_9/MatMul/ReadVariableOp)^while/gru_cell_9/MatMul_1/ReadVariableOp ^while/gru_cell_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"h
1while_gru_cell_9_matmul_1_readvariableop_resource3while_gru_cell_9_matmul_1_readvariableop_resource_0"d
/while_gru_cell_9_matmul_readvariableop_resource1while_gru_cell_9_matmul_readvariableop_resource_0"V
(while_gru_cell_9_readvariableop_resource*while_gru_cell_9_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2P
&while/gru_cell_9/MatMul/ReadVariableOp&while/gru_cell_9/MatMul/ReadVariableOp2T
(while/gru_cell_9/MatMul_1/ReadVariableOp(while/gru_cell_9/MatMul_1/ReadVariableOp2B
while/gru_cell_9/ReadVariableOpwhile/gru_cell_9/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
E__inference_dense_73_layer_call_and_return_conditional_losses_2359127

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?D
?
while_body_2360033
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0=
*while_gru_cell_9_readvariableop_resource_0:	?D
1while_gru_cell_9_matmul_readvariableop_resource_0:	?G
3while_gru_cell_9_matmul_1_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor;
(while_gru_cell_9_readvariableop_resource:	?B
/while_gru_cell_9_matmul_readvariableop_resource:	?E
1while_gru_cell_9_matmul_1_readvariableop_resource:
????&while/gru_cell_9/MatMul/ReadVariableOp?(while/gru_cell_9/MatMul_1/ReadVariableOp?while/gru_cell_9/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/gru_cell_9/ReadVariableOpReadVariableOp*while_gru_cell_9_readvariableop_resource_0*
_output_shapes
:	?*
dtype02!
while/gru_cell_9/ReadVariableOp?
while/gru_cell_9/unstackUnpack'while/gru_cell_9/ReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2
while/gru_cell_9/unstack?
&while/gru_cell_9/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_9_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02(
&while/gru_cell_9/MatMul/ReadVariableOp?
while/gru_cell_9/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/MatMul?
while/gru_cell_9/BiasAddBiasAdd!while/gru_cell_9/MatMul:product:0!while/gru_cell_9/unstack:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/BiasAdd?
 while/gru_cell_9/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 while/gru_cell_9/split/split_dim?
while/gru_cell_9/splitSplit)while/gru_cell_9/split/split_dim:output:0!while/gru_cell_9/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/gru_cell_9/split?
(while/gru_cell_9/MatMul_1/ReadVariableOpReadVariableOp3while_gru_cell_9_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02*
(while/gru_cell_9/MatMul_1/ReadVariableOp?
while/gru_cell_9/MatMul_1MatMulwhile_placeholder_20while/gru_cell_9/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/MatMul_1?
while/gru_cell_9/BiasAdd_1BiasAdd#while/gru_cell_9/MatMul_1:product:0!while/gru_cell_9/unstack:output:1*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/BiasAdd_1?
while/gru_cell_9/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
while/gru_cell_9/Const?
"while/gru_cell_9/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"while/gru_cell_9/split_1/split_dim?
while/gru_cell_9/split_1SplitV#while/gru_cell_9/BiasAdd_1:output:0while/gru_cell_9/Const:output:0+while/gru_cell_9/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/gru_cell_9/split_1?
while/gru_cell_9/addAddV2while/gru_cell_9/split:output:0!while/gru_cell_9/split_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/add?
while/gru_cell_9/SigmoidSigmoidwhile/gru_cell_9/add:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/Sigmoid?
while/gru_cell_9/add_1AddV2while/gru_cell_9/split:output:1!while/gru_cell_9/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/add_1?
while/gru_cell_9/Sigmoid_1Sigmoidwhile/gru_cell_9/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/Sigmoid_1?
while/gru_cell_9/mulMulwhile/gru_cell_9/Sigmoid_1:y:0!while/gru_cell_9/split_1:output:2*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/mul?
while/gru_cell_9/add_2AddV2while/gru_cell_9/split:output:2while/gru_cell_9/mul:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/add_2?
while/gru_cell_9/ReluReluwhile/gru_cell_9/add_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/Relu?
while/gru_cell_9/mul_1Mulwhile/gru_cell_9/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/mul_1u
while/gru_cell_9/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell_9/sub/x?
while/gru_cell_9/subSubwhile/gru_cell_9/sub/x:output:0while/gru_cell_9/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/sub?
while/gru_cell_9/mul_2Mulwhile/gru_cell_9/sub:z:0#while/gru_cell_9/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/mul_2?
while/gru_cell_9/add_3AddV2while/gru_cell_9/mul_1:z:0while/gru_cell_9/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_9/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_9/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell_9/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?

while/NoOpNoOp'^while/gru_cell_9/MatMul/ReadVariableOp)^while/gru_cell_9/MatMul_1/ReadVariableOp ^while/gru_cell_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"h
1while_gru_cell_9_matmul_1_readvariableop_resource3while_gru_cell_9_matmul_1_readvariableop_resource_0"d
/while_gru_cell_9_matmul_readvariableop_resource1while_gru_cell_9_matmul_readvariableop_resource_0"V
(while_gru_cell_9_readvariableop_resource*while_gru_cell_9_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2P
&while/gru_cell_9/MatMul/ReadVariableOp&while/gru_cell_9/MatMul/ReadVariableOp2T
(while/gru_cell_9/MatMul_1/ReadVariableOp(while/gru_cell_9/MatMul_1/ReadVariableOp2B
while/gru_cell_9/ReadVariableOpwhile/gru_cell_9/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
G__inference_gru_cell_9_layer_call_and_return_conditional_losses_2360726

inputs
states_0*
readvariableop_resource:	?1
matmul_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??
identity

identity_1??MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?ReadVariableOpy
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	?*
dtype02
ReadVariableOpl
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2	
unstack?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:??????????2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
split?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:??????????2
	BiasAdd_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split_1/split_dim?
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2	
split_1h
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:??????????2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:??????????2	
Sigmoidl
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:??????????2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_1e
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:??????????2
mulc
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:??????????2
add_2R
ReluRelu	add_2:z:0*
T0*(
_output_shapes
:??????????2
Relu_
mul_1MulSigmoid:y:0states_0*
T0*(
_output_shapes
:??????????2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/xa
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
sube
mul_2Mulsub:z:0Relu:activations:0*
T0*(
_output_shapes
:??????????2
mul_2`
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:??????????2
add_3e
IdentityIdentity	add_3:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityi

Identity_1Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity_1?
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????:??????????: : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0
?	
?
-__inference_model_GRU_1_layer_call_fn_2359458
lambda_11_input
unknown:	?
	unknown_0:	?
	unknown_1:
??
	unknown_2:
??
	unknown_3:	?
	unknown_4:	?
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllambda_11_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*)
_read_only_resource_inputs
	*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_model_GRU_1_layer_call_and_return_conditional_losses_23594222
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:?????????
)
_user_specified_namelambda_11_input
?"
?
while_body_2358651
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_gru_cell_9_2358673_0:	?-
while_gru_cell_9_2358675_0:	?.
while_gru_cell_9_2358677_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_gru_cell_9_2358673:	?+
while_gru_cell_9_2358675:	?,
while_gru_cell_9_2358677:
????(while/gru_cell_9/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/gru_cell_9/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_9_2358673_0while_gru_cell_9_2358675_0while_gru_cell_9_2358677_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_gru_cell_9_layer_call_and_return_conditional_losses_23585882*
(while/gru_cell_9/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder1while/gru_cell_9/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity1while/gru_cell_9/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?

while/NoOpNoOp)^while/gru_cell_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"6
while_gru_cell_9_2358673while_gru_cell_9_2358673_0"6
while_gru_cell_9_2358675while_gru_cell_9_2358675_0"6
while_gru_cell_9_2358677while_gru_cell_9_2358677_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2T
(while/gru_cell_9/StatefulPartitionedCall(while/gru_cell_9/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
G__inference_gru_cell_9_layer_call_and_return_conditional_losses_2358445

inputs

states*
readvariableop_resource:	?1
matmul_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??
identity

identity_1??MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?ReadVariableOpy
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	?*
dtype02
ReadVariableOpl
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:?:?*	
num2	
unstack?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:??????????2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
split?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:??????????2
	BiasAdd_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split_1/split_dim?
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2	
split_1h
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:??????????2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:??????????2	
Sigmoidl
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:??????????2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_1e
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:??????????2
mulc
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:??????????2
add_2R
ReluRelu	add_2:z:0*
T0*(
_output_shapes
:??????????2
Relu]
mul_1MulSigmoid:y:0states*
T0*(
_output_shapes
:??????????2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/xa
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
sube
mul_2Mulsub:z:0Relu:activations:0*
T0*(
_output_shapes
:??????????2
mul_2`
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:??????????2
add_3e
IdentityIdentity	add_3:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityi

Identity_1Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity_1?
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????:??????????: : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?

?
,__inference_gru_cell_9_layer_call_fn_2360634

inputs
states_0
unknown:	?
	unknown_0:	?
	unknown_1:
??
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_gru_cell_9_layer_call_and_return_conditional_losses_23584452
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:??????????2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0
?
?
'__inference_gru_6_layer_call_fn_2359958

inputs
unknown:	?
	unknown_0:	?
	unknown_1:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_gru_6_layer_call_and_return_conditional_losses_23591082
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
'__inference_gru_6_layer_call_fn_2359947
inputs_0
unknown:	?
	unknown_0:	?
	unknown_1:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_gru_6_layer_call_and_return_conditional_losses_23587152
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
K
lambda_11_input8
!serving_default_lambda_11_input:0?????????<
dense_740
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
e_default_save_signature
f__call__
*g&call_and_return_all_conditional_losses"
_tf_keras_sequential
?
	variables
trainable_variables
regularization_losses
	keras_api
h__call__
*i&call_and_return_all_conditional_losses"
_tf_keras_layer
?
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
j__call__
*k&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
l__call__
*m&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
 	keras_api
n__call__
*o&call_and_return_all_conditional_losses"
_tf_keras_layer
?
!iter

"beta_1

#beta_2
	$decay
%learning_ratemWmXmYmZ&m['m\(m]v^v_v`va&vb'vc(vd"
	optimizer
Q
&0
'1
(2
3
4
5
6"
trackable_list_wrapper
Q
&0
'1
(2
3
4
5
6"
trackable_list_wrapper
 "
trackable_list_wrapper
?
	variables
trainable_variables
)layer_metrics
regularization_losses
*layer_regularization_losses
+non_trainable_variables

,layers
-metrics
f__call__
e_default_save_signature
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
,
pserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
	variables
trainable_variables
regularization_losses
.non_trainable_variables
/layer_regularization_losses
0layer_metrics

1layers
2metrics
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
?

&kernel
'recurrent_kernel
(bias
3	variables
4trainable_variables
5regularization_losses
6	keras_api
q__call__
*r&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
&0
'1
(2"
trackable_list_wrapper
5
&0
'1
(2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
	variables
trainable_variables
7layer_metrics
regularization_losses
8layer_regularization_losses

9states
:non_trainable_variables

;layers
<metrics
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
#:!
??2dense_73/kernel
:?2dense_73/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
	variables
trainable_variables
regularization_losses
=non_trainable_variables
>layer_regularization_losses
?layer_metrics

@layers
Ametrics
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses"
_generic_user_object
": 	?2dense_74/kernel
:2dense_74/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
	variables
trainable_variables
regularization_losses
Bnon_trainable_variables
Clayer_regularization_losses
Dlayer_metrics

Elayers
Fmetrics
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
*:(	?2gru_6/gru_cell_9/kernel
5:3
??2!gru_6/gru_cell_9/recurrent_kernel
(:&	?2gru_6/gru_cell_9/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
.
G0
H1"
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
5
&0
'1
(2"
trackable_list_wrapper
5
&0
'1
(2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
3	variables
4trainable_variables
5regularization_losses
Inon_trainable_variables
Jlayer_regularization_losses
Klayer_metrics

Llayers
Mmetrics
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
	Ntotal
	Ocount
P	variables
Q	keras_api"
_tf_keras_metric
^
	Rtotal
	Scount
T
_fn_kwargs
U	variables
V	keras_api"
_tf_keras_metric
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
:  (2total
:  (2count
.
N0
O1"
trackable_list_wrapper
-
P	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
R0
S1"
trackable_list_wrapper
-
U	variables"
_generic_user_object
(:&
??2Adam/dense_73/kernel/m
!:?2Adam/dense_73/bias/m
':%	?2Adam/dense_74/kernel/m
 :2Adam/dense_74/bias/m
/:-	?2Adam/gru_6/gru_cell_9/kernel/m
::8
??2(Adam/gru_6/gru_cell_9/recurrent_kernel/m
-:+	?2Adam/gru_6/gru_cell_9/bias/m
(:&
??2Adam/dense_73/kernel/v
!:?2Adam/dense_73/bias/v
':%	?2Adam/dense_74/kernel/v
 :2Adam/dense_74/bias/v
/:-	?2Adam/gru_6/gru_cell_9/kernel/v
::8
??2(Adam/gru_6/gru_cell_9/recurrent_kernel/v
-:+	?2Adam/gru_6/gru_cell_9/bias/v
?B?
"__inference__wrapped_model_2358375lambda_11_input"?
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
?2?
-__inference_model_GRU_1_layer_call_fn_2359167
-__inference_model_GRU_1_layer_call_fn_2359548
-__inference_model_GRU_1_layer_call_fn_2359567
-__inference_model_GRU_1_layer_call_fn_2359458?
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
H__inference_model_GRU_1_layer_call_and_return_conditional_losses_2359735
H__inference_model_GRU_1_layer_call_and_return_conditional_losses_2359903
H__inference_model_GRU_1_layer_call_and_return_conditional_losses_2359480
H__inference_model_GRU_1_layer_call_and_return_conditional_losses_2359502?
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
+__inference_lambda_11_layer_call_fn_2359908
+__inference_lambda_11_layer_call_fn_2359913?
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
F__inference_lambda_11_layer_call_and_return_conditional_losses_2359919
F__inference_lambda_11_layer_call_and_return_conditional_losses_2359925?
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
'__inference_gru_6_layer_call_fn_2359936
'__inference_gru_6_layer_call_fn_2359947
'__inference_gru_6_layer_call_fn_2359958
'__inference_gru_6_layer_call_fn_2359969?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_gru_6_layer_call_and_return_conditional_losses_2360122
B__inference_gru_6_layer_call_and_return_conditional_losses_2360275
B__inference_gru_6_layer_call_and_return_conditional_losses_2360428
B__inference_gru_6_layer_call_and_return_conditional_losses_2360581?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_dense_73_layer_call_fn_2360590?
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
E__inference_dense_73_layer_call_and_return_conditional_losses_2360601?
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
*__inference_dense_74_layer_call_fn_2360610?
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
E__inference_dense_74_layer_call_and_return_conditional_losses_2360620?
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
%__inference_signature_wrapper_2359529lambda_11_input"?
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
 
?2?
,__inference_gru_cell_9_layer_call_fn_2360634
,__inference_gru_cell_9_layer_call_fn_2360648?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

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
G__inference_gru_cell_9_layer_call_and_return_conditional_losses_2360687
G__inference_gru_cell_9_layer_call_and_return_conditional_losses_2360726?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

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
 ?
"__inference__wrapped_model_2358375x(&'8?5
.?+
)?&
lambda_11_input?????????
? "3?0
.
dense_74"?
dense_74??????????
E__inference_dense_73_layer_call_and_return_conditional_losses_2360601^0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? 
*__inference_dense_73_layer_call_fn_2360590Q0?-
&?#
!?
inputs??????????
? "????????????
E__inference_dense_74_layer_call_and_return_conditional_losses_2360620]0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? ~
*__inference_dense_74_layer_call_fn_2360610P0?-
&?#
!?
inputs??????????
? "???????????
B__inference_gru_6_layer_call_and_return_conditional_losses_2360122~(&'O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "&?#
?
0??????????
? ?
B__inference_gru_6_layer_call_and_return_conditional_losses_2360275~(&'O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "&?#
?
0??????????
? ?
B__inference_gru_6_layer_call_and_return_conditional_losses_2360428n(&'??<
5?2
$?!
inputs?????????

 
p 

 
? "&?#
?
0??????????
? ?
B__inference_gru_6_layer_call_and_return_conditional_losses_2360581n(&'??<
5?2
$?!
inputs?????????

 
p

 
? "&?#
?
0??????????
? ?
'__inference_gru_6_layer_call_fn_2359936q(&'O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "????????????
'__inference_gru_6_layer_call_fn_2359947q(&'O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "????????????
'__inference_gru_6_layer_call_fn_2359958a(&'??<
5?2
$?!
inputs?????????

 
p 

 
? "????????????
'__inference_gru_6_layer_call_fn_2359969a(&'??<
5?2
$?!
inputs?????????

 
p

 
? "????????????
G__inference_gru_cell_9_layer_call_and_return_conditional_losses_2360687?(&']?Z
S?P
 ?
inputs?????????
(?%
#? 
states/0??????????
p 
? "T?Q
J?G
?
0/0??????????
%?"
 ?
0/1/0??????????
? ?
G__inference_gru_cell_9_layer_call_and_return_conditional_losses_2360726?(&']?Z
S?P
 ?
inputs?????????
(?%
#? 
states/0??????????
p
? "T?Q
J?G
?
0/0??????????
%?"
 ?
0/1/0??????????
? ?
,__inference_gru_cell_9_layer_call_fn_2360634?(&']?Z
S?P
 ?
inputs?????????
(?%
#? 
states/0??????????
p 
? "F?C
?
0??????????
#? 
?
1/0???????????
,__inference_gru_cell_9_layer_call_fn_2360648?(&']?Z
S?P
 ?
inputs?????????
(?%
#? 
states/0??????????
p
? "F?C
?
0??????????
#? 
?
1/0???????????
F__inference_lambda_11_layer_call_and_return_conditional_losses_2359919d7?4
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
F__inference_lambda_11_layer_call_and_return_conditional_losses_2359925d7?4
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
+__inference_lambda_11_layer_call_fn_2359908W7?4
-?*
 ?
inputs?????????

 
p 
? "???????????
+__inference_lambda_11_layer_call_fn_2359913W7?4
-?*
 ?
inputs?????????

 
p
? "???????????
H__inference_model_GRU_1_layer_call_and_return_conditional_losses_2359480r(&'@?=
6?3
)?&
lambda_11_input?????????
p 

 
? "%?"
?
0?????????
? ?
H__inference_model_GRU_1_layer_call_and_return_conditional_losses_2359502r(&'@?=
6?3
)?&
lambda_11_input?????????
p

 
? "%?"
?
0?????????
? ?
H__inference_model_GRU_1_layer_call_and_return_conditional_losses_2359735i(&'7?4
-?*
 ?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
H__inference_model_GRU_1_layer_call_and_return_conditional_losses_2359903i(&'7?4
-?*
 ?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
-__inference_model_GRU_1_layer_call_fn_2359167e(&'@?=
6?3
)?&
lambda_11_input?????????
p 

 
? "???????????
-__inference_model_GRU_1_layer_call_fn_2359458e(&'@?=
6?3
)?&
lambda_11_input?????????
p

 
? "???????????
-__inference_model_GRU_1_layer_call_fn_2359548\(&'7?4
-?*
 ?
inputs?????????
p 

 
? "???????????
-__inference_model_GRU_1_layer_call_fn_2359567\(&'7?4
-?*
 ?
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_2359529?(&'K?H
? 
A?>
<
lambda_11_input)?&
lambda_11_input?????????"3?0
.
dense_74"?
dense_74?????????