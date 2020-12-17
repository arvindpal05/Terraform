resource "aws_security_group" "sg" {
  name          = "arvind-EC@-SG"  
  vpc_id = "${aws_vpc.vpc.id}"
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "SC"
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
  }
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "SG for allowing web traffic"
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
  }
}