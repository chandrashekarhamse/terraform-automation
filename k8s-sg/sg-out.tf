output "k8s-master-sg-id" {
    value = aws_security_group.k8s_master.id
}

output "k8s-worker-sg-id" {
    value = aws_security_group.k8s_worker.id
}
