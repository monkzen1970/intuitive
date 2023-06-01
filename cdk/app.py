from aws_cdk import core as cdk
from networking.networking_stack import NetworkingStack
from compute.compute_stack import ComputeStack
from storage.storage_stack import S3Stack

app = cdk.App()
networking_stack = NetworkingStack(app, "NetworkingStack")
ComputeStack(app, "ComputeStack", vpc=networking_stack.vpc)
S3Stack(app, "S3Stack")
app.synth()
