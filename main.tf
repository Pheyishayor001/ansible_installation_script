module "ec2_instance" {
  source   = "terraform-aws-modules/ec2-instance/aws"
  version  = ">= 3.0"
  for_each = var.instance_configurations

  ami                    = "ami-0984f4b9e98be44bf"
  instance_type          = var.ec2_instance_type
  vpc_security_group_ids = [aws_security_group.SG.id]
  key_name               = "network"
  user_data              = each.value.user_data
 



  tags = {
    Name = each.value.name
    Terraform   = "true"
    Environment = "${each.key}"
  }
}

