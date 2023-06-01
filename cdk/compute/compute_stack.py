from aws_cdk import (
    core as cdk,
    aws_ec2 as ec2
)

class ComputeStack(cdk.Stack):

    def __init__(self, scope: cdk.Construct, id: str, vpc: ec2.Vpc, **kwargs) -> None:
        super().__init__(scope, id, **kwargs)

        # Define an Amazon EC2 instance
        for i, subnet in enumerate(vpc.private_subnets):
            ec2.Instance(self, f"EC2Instance{i+1}",
                instance_type=ec2.InstanceType("t3.micro"),
                machine_image=ec2.MachineImage.latest_amazon_linux(),
                vpc=vpc,
                vpc_subnets=ec2.SubnetSelection(subnets=[subnet]),
            )
