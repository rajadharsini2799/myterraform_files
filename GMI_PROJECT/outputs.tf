output "elk_private_ip" {
  value = aws_instance.elk.private_ip
}

output "app_public_ip" {
  value = aws_instance.app.public_ip
}

output "eks_cluster_name" {
  value = aws_eks_cluster.eks.name
}

output "vpc_id" {
  value = aws_vpc.main.id
}
