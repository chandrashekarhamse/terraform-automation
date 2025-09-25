
module "k8s-sg" {
    source = "./k8s-sg"
    k8s_master_sg = var.k8s_master_sg
    k8s_worker_sg = var.k8s_worker_sg
    vpc_id = var.vpc_id
}

module "k8s-ec2" {
    source = "./k8s-ec2-nodes"
    ami_id = var.ami_id
    instance_type_master = var.instance_type_master
    instance_type_worker =var.instance_type_worker
    instance_name_master = var.instance_name_master
    instance_name_worker = var.instance_name_worker
    key_name = var.key_name
    k8s_master_sg = module.k8s-sg.k8s-master-sg-id
    k8s_worker_sg = module.k8s-sg.k8s-worker-sg-id
}
