terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-2"
}




resource "aws_instance" "app_server" {
  ami           = "ami-02a66f06b3557a897"
  instance_type = "t3.xlarge"
  count = 10
  tags = {
    Name = "H-test"
  }
}



















// resource "aws_instance" "app_server" {
//   ami           = "ami-01235362b98157fe1"
//   instance_type = "t2.micro"
//   count = 1
//   user_data = <<-EOF
//               #!/bin/bash
//               echo "Hello, Wendesday World." > index.html
//               nohup busybox httpd -f -p 8080 &
//               EOF


//   tags = {
//     Name = "H-test"
//   }
// }

// output "instance_ip_addr" {
//   value = aws_instance.app_server.*.public_ip
// }
