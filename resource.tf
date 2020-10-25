provider "aws"{

}

variable "AWS_REGION"{
    type = string
}

resource "aws_instance" "nameResource"{
    ami = var.AMIS[var.AWS_REGION]
    instance_type = "t2.micro"
}