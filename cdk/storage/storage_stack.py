from aws_cdk import (
    core as cdk,
    aws_s3 as s3
)

class S3Stack(cdk.Stack):

    def __init__(self, scope: cdk.Construct, id: str, **kwargs) -> None:
        super().__init__(scope, id, **kwargs)

        # Define an Amazon S3 bucket
        s3.Bucket(self, "Bucket",
            removal_policy=cdk.RemovalPolicy.DESTROY
        )
