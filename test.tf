 provider "aws" {
   region  = "us-east-1"
 }


resource "aws_instance" "test" {
  ami           = "ami-06b21ccaeff8cd686"
  instance_type = "t2.small"
}



# resource "aws_vpc" "dolfined" {
#   cidr_block       = "10.0.0.0/16"
#   tags = {
#     Name = "terraform_vpc"
#   }
# }

# resource "aws_subnet" "private" {
#   vpc_id     = aws_vpc.dolfined.id
#   cidr_block = "10.0.1.0/24"

#   tags = {
#     Name = "private"
#   }
# }


# resource "aws_subnet" "public" {
#   vpc_id     = aws_vpc.dolfined.id
#   cidr_block = "10.0.10.0/24"

#   tags = {
#     Name = "public"
#   }
# }



# resource "aws_s3_bucket" "dolfined" {
#   bucket = "my-tf-test-bucket133213235"

#   tags = {
#     Name        = "dolfined_bucket"
#     Environment = "test"
#   }
# }


# resource "random_password" "password" {
#   length  = 16
#   special = true
# }
# output "password" {
#   value     = random_password.password.result
#   sensitive = true
# }
# resource "random_uuid" "guid" {
#   keepers = {
#     datetime = timestamp()
#   }
# }
# output "guid" {
#   value = random_uuid.guid.result
# }

# resource "tls_private_key" "tls" {
#   algorithm = "RSA"
# }
# resource "local_file" "tls-public" {
#   filename = "id_rsa.pub"
#   content  = tls_private_key.tls.public_key_openssh
# }
# resource "local_file" "tls-private" {
#   filename = "id_rsa.pem"
#   content  = tls_private_key.tls.private_key_pem
#   provisioner "local-exec" {
#     command = "chmod 600 id_rsa.pem"
#   }
# }



# resource "aws_s3_bucket" "mys3" {
#   bucket = "dolfined165484516"
# }

# resource "aws_instance" "myec2" {
#   ami           = "ami-026b57f3c383c2eec"
#   instance_type = "t2.micro"
#   tags = {
#     Name = "dolfined_demo"
#   }
# }

# output "s3_arn" {
#   value = aws_s3_bucket.mys3.arn
# }

# output "myec2_ip" {
#   value = aws_instance.myec2.private_ip
# }


# # create EIP address
# resource "aws_eip" "lb" {
#   vpc = true
# }
# output "elp" {
#   value = aws_eip.lb.public_ip
# }

# # create new gateway
# resource "aws_nat_gateway" "test" {
#   allocation_id = aws_eip.lb.id
#   subnet_id     = "subnet-0ac23fb533942802f"

#   tags = {
#     Name = "gw NAT"
#   }
# }





# output "Nat_ID" {
#   value = aws_nat_gateway.test.id
# }


# resource "aws_iam_user" "example_user" {
#   name = "exampleuser"
# }


# output "user_arn" {
#   description = "The ARN of the IAM user"
#   value = aws_iam_user.example_user.arn
# }



# terraform {
#   required_providers {
#     aws = {
#       version = "= 5.4.0"
#       source  = "hashicorp/aws"
#     }
#   }
#   required_version = "~>1.4.0"
# }



# resource "aws_iam_user" "app_user" {
#   name  = "app_user"
#   path  = "/system/"
#   count = 3

#   tags = {
#     tag-key = "app_user"
#   }
# }


# # terraform setting constrain
# terraform {
#   required_version = " ~> 1.9.0"
# }


# # Create an new S3 Bucket resource.
# resource "aws_s3_bucket" "my-new-S3-bucket" {
#   bucket = "dolfinedtestbucketdolfined16589651"
#   tags = {
#     Name = "terrform_testdb123"
#   }
# }

# # Create a new Security group
# resource "aws_security_group" "sg_test" {
#   name = "sg_test"

#   ingress {
#     from_port   = 0
#     to_port     = 65535
#     protocol    = "tcp"
#     cidr_blocks = ["192.168.120.0/24"]
#   }
# }

# create ec2 instance
# resource "aws_instance" "myec2" {
#   ami           = "ami-022e1a32d3f742bd8"
#   instance_type = "t2.micro"
#   provisioner "remote-exec" {
#     when    = destroy
# on_failure = continue

#   }
# }


# resource "aws_key_pair" "deployer" {
#   key_name   = "ec2_key"
#   public_key = file("~/.ssh/ec2_key.pub")
# }
# resource "aws_instance" "myec2" {
#   ami           = "ami-06b21ccaeff8cd686"
#   instance_type = "t2.micro"
#   key_name      = "ec2_key"
#   connection {
#     type        = "ssh"
#     user        = "ec2-user"
#     private_key = file("~/.ssh/ec2_key")
#     host        = self.public_ip
#   }
#   provisioner "remote-exec" {
#     inline = [
#       "sudo yum -y install nginx",
#       "sudo systemctl start nginx"
#     ]
#   }
# }


# resource "aws_iam_user" "dev" {
#   name = "dev20"
#   path = "/system/"
# }

# resource "aws_instance" "myec2" {
#   ami = "ami-06b21ccaeff8cd686"
#   instance_type = "t2.micro"

# }




# # Create a security group to allow SSH access
# resource "aws_security_group" "allow_ssh" {
#   name        = "allow_ssh"
#   description = "Allow SSH inbound traffic"
#   vpc_id      = "vpc-0800a830967c51b1d"  # Your VPC ID

#   ingress {
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]  # Change to your IP for better security
#   }

#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# }

# # Create an EC2 key pair
# resource "aws_key_pair" "deployer" {
#   key_name   = "ec2_key"
#   public_key = file("~/.ssh/ec2_key.pub")
# }

# # Create an EC2 instance
# resource "aws_instance" "myec2" {
#   ami           = "ami-06b21ccaeff8cd686"
#   instance_type = "t2.micro"
#   key_name      = aws_key_pair.deployer.key_name
#   vpc_security_group_ids = [aws_security_group.allow_ssh.id]

#   # SSH connection settings
#   connection {
#     type        = "ssh"
#     user        = "ec2-user"
#     private_key = file("~/.ssh/ec2_key")
#     host        = self.private_ip
#   }

#   # Remote provisioner to install and start Apache on the instance
#   provisioner "remote-exec" {
#     inline = [
#       "sudo yum -y install httpd",
#       "sudo systemctl start httpd"
#     ]
#   }

#   # Local provisioner to save the instance's private IP to a file
#   provisioner "local-exec" {
#     command = "echo ${self.private_ip} > instance_private_ip.txt"
#   }
# }

# # Output the private IP of the instance
# output "instance_private_ip" {
#   value = aws_instance.myec2.private_ip
# }




# resource "aws_instance" "myec2" {
#   ami           = data.aws_ami.myami.id
#   instance_type = "t2.micro"
# }


# data "aws_availability_zones" "available" {}
# data "aws_region" "current" {}

# output "available_zones" {
#   value = data.aws_availability_zones.available.names[*]
# }
# output "current_region" {
#   value = data.aws_region.current.id
# }


# provider "aws" {
#   alias   = "non_default"
#   region  = "us-east-2"
#   profile = "terraform_dev2"
# }

# resource "aws_instance" "instance1" {
#   ami           = "ami-01e3c4a339a264cc9"
#   instance_type = "t2.micro"
#   tags = {
#     Name = "us_east_1_instance"
#   }
# }

# resource "aws_instance" "instance2" {
#   provider      = aws.non_default
#   ami           = "ami-04bb1b19f9e27b3c8"
#   instance_type = "t2.micro"
#   tags = {
#     Name = "us_east_2_instance"
#   }
# }


# resource "aws_instance" "terraform_instance" {
#   ami           = "ami-06b21ccaeff8cd686"
#   instance_type = "t2.micro"
#   tags = {
#     Name = "us_east_2_instance"
#   }

# }


# import {
#   to = aws_instance.web
#   id = "i-05552bfe65f1fe9b2"
# }
# import {
#   to = aws_security_group.mysg
#   id = "sg-051d601ae312f34be"
# }


# resource "aws_iam_user" "dev" {
#   name = "dev123"
#   path = "/system/"
# }
# resource "aws_instance" "myec2" {
#   ami           = "ami-06b21ccaeff8cd686"
#   instance_type = "t2.micro"
# }


# provider "aws" {
#   alias   = "non_default"
#   region  = "us-east-2"
#   profile = "terraform_dev"
# }

# resource "aws_instance" "instance1" {
#   ami           = "ami-06b21ccaeff8cd686"
#   instance_type = "t2.micro"
#   tags = {
#     Name = "us_east_1_instance"
#   }
# }

# resource "aws_instance" "instance2" {
#   provider      = aws.non_default
#   ami           = "ami-04bb1b19f9e27b3c8"
#   instance_type = "t2.micro"
#   tags = {
#     Name = "us_east_2_instance"
#   }
# }


# import {
#   to = aws_instance.web
#   id = "i-02c7bf0d075713cc0"
# }



