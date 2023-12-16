identity_token "aws" {
    audience = ["aws.workload.identity"]
}

// deployment "east" {
//   variables = {
//     instances           = 1
//     region              = "us-east-1"
//     role_arn            = "arn:aws:iam::609845769455:role/tfc-stack-superadmin"
//     identity_token_file = identity_token.aws.jwt_filename
//   }
// }

deployment "west" {
  variables = {
    name                = "vault"
    instances           = 3
    region              = "us-west-2"
    role_arn            = "arn:aws:iam::609845769455:role/tfc-stack-superadmin"
    identity_token_file = identity_token.aws.jwt_filename
    vpc_cidr            = "10.0.0.0/16"
    azs                 = ["us-west-2a", "us-west-2b", "us-west-2c"]
    cluster_version     = "1.28"
    tags                = {
      GithubRepo = "github.com/gautambaghel/eks-vault-stack"
    }
  }
}
