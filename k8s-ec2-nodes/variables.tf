variable "ami_id" {
    type = string
}

variable "instance_type_master" {
    type = string
}

variable "instance_type_worker" {
    type = string
}

variable "instance_name_master" {
    type = string
}

variable "instance_name_worker" {
    type = string
}

variable "key_name" {
    type = string
}

variable "k8s_master_sg" {
    type = string
}

variable "k8s_worker_sg" {
    type = string
}
