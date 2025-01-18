provider "aws" {
  region = "ap-northeast-1"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

resource "aws_instance" "nattchi-sandbox" {
  ami = "ami-0c55b159cbfafe1f0"
  instance_type = var.instance_type
  tags = {
    Name = "nattchi-sandbox"
  }
}

output "instance_id" {
  value = aws_instance.nattchi-sandbox.id
}



