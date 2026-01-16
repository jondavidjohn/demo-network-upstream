deployment "prod" {
  inputs = {
    account_id = "21091"
    region     = "us-east-1"
  }
}


# Publish outputs for downstream stacks
publish_output "vpc_id_prod" {
  value = deployment.prod.vpc_id
}

publish_output "subnet_private_id_prod" {
  value = deployment.prod.subnet_private_id
}

publish_output "subnet_public_id_prod" {
  value = deployment.prod.subnet_public_id
}
