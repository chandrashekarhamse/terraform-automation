resource "aws_instance" "k8s-master" {
    ami = var.ami_id
    instance_type = var.instance_type_master
    tags = {
        Name = var.instance_name_master
        component = "Master"
    }
    key_name = var.key_name 
    vpc_security_group_ids = [var.k8s_master_sg]
}
