module "ec2" {
  source  = "arvindpal05/ec2/aws"
  version = "0.0.1"
  ami           = "ami-04d29b6f966df1537"
  keyname       = "arvi_key"
  instance_type = "t2.micro"
  noOfInstance =2
  # insert the 4 required variables here
}
/*module "ec2" {
  source        = "./module/ec2"
  ami           = "ami-04d29b6f966df1537"
  keyname       = "arvi_key"
  instance_type = "t2.micro"
  noOfInstance =2

}*/
data "aws_availability_zones" "zone" {
  
}
data "aws_instance" "other"{
        instance_id = "i-0b803f8c8e8dac9e1"
}
output "az" {
        value = data.aws_availability_zones.zone.names[0]
}

output "ipaddresses" {
        value = module.ec2.publicIPAddresses
}
output "sunainaipaddresses" {
        value = data.aws_instance.other.public_ip
}