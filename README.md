Creating similar Terraform templates for Google Cloud Platform (GCP)in addition to the 
AWS ones we've just built requires several changes due to differences in the cloud platforms. 
Please note that in GCP, Compute Engine instances are equivalent to 
AWS EC2 instances and Persistent Disk is equivalent to EBS in AWS. 
We will keep a similar directory structure for modules.

For GCP, you will need to authenticate using a service account. 
The account credentials will be in a JSON file which you reference in the provider setup.
