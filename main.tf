provider "aws" {
  region = "us-east-1"  # Use your preferred region
}

resource "aws_instance" "web" {
  ami           = "ami-00b7ea845217da02c"  # Amazon Linux 2
  instance_type = "t2.micro"
  key_name      = "my-key"  # Replace with your key pair

  tags = {
    Name  = "TF-DevOps-Server"
    Group = "DevOps-Batch"
    Env   = "Dev"
  }

  root_block_device {
    volume_size = 8
    volume_type = "gp2"
    delete_on_termination = true
  }
}
