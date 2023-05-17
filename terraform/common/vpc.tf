module "vpc" {
  source = "../modules/vpc"
  
  name            = "demo"
  cidr            = "10.0.0.0/16"
  azs             = ["ap-northeast-2a", "ap-northeast-2b", "ap-northeast-2c"]
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]

  key_name = "secret"
  key_file = file("../id_rsa.pub")

  tags = {
    "TerraformManaged" = "true"
  }
}