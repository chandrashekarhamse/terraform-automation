resource "aws_instance" "k8s-worker" {
    count = 2
    ami = var.ami_id
    instance_type = var.instance_type_worker
    key_name = var.key_name
    tags = {
      Name = "${var.instance_name_worker}-${count.index + 1}"
      component = "worker"
    }
    vpc_security_group_ids = [ var.k8s_worker_sg ]
}
