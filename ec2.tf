resource "aws_instance" "demo" {
    ami = "ami-03265a0778a880afb"
    instance_type = "t2.micro"
    security_groups = [aws_security_group.allow_all_security.id]
    subnet_id = aws_subnet.public
}