resource "aws_default_vpc" "default" {
  tags = {
    Name = "Default VPC"
  }
}

resource "aws_default_subnet" "default_az1" {
  availability_zone = "${var.region}c"
  depends_on = [ aws_default_vpc.default ]
  tags = {
    Name = "Default subnet for ${var.region}c"
  }
}

resource "aws_instance" "ec2_instance" {
    ami           = var.ami
    instance_type = "t2.micro"

    subnet_id     = aws_default_subnet.default_az1.id
    tags = {
        Name  = "Yashika"
        Owner = "yashika@cloudeq.com"
    }  
        volume_tags = {
        Name  = "Yashika"
        Owner = "yashika@cloudeq.com"
  }
  
}
