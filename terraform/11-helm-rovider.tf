data "aws_eks_cluster" "eks" {
    name = aws_eks_cluster.eks.name
}

data "aws_eks_cluster_auth" "name" {
    name = aws_eks_cluster.eks.name
}

provider "helm" {
    kubernetes = {
        host = data.aws_eks_cluster.eks.endpoint
        cluster_ca_certificate = base64decode(data.aws_eks_cluster.eks.certifificate_authority[0].data)
        token = data.aws_eks_cluster_auth.eks.token
    }
}