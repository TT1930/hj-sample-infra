terraform {
  required_version = "= 1.2.9"
}

module "common" {
  source = "../common"
  region = "us-east1"
  az1 = "us-east1a"
  az2 = "us-east1c"
  bastion = {
    image_id = "ami-09d3b3274b6c5d4aa"
    key_name = "vockey"
  }
  template = {
    image_id = "ami-09d3b3274b6c5d4aa"
    key_name = "vockey"
  }
  database = {
    host              = "localhost"
    port              = "3306"
    db_name           = "mydb"
    username          = "sy"
    password          = "sy20030124"
    engine            = "aurora-mysql"
    engine_version    = "5.7.mysql_aurora.2.11.0"
    instance_class    = "db.t3.small"
    num_of_instances  = "0"
  }
  session = {
    table_name = "session-table"
    key_name = "sessionId"
  }
  s3_original = {
    bucket_name = "bucket1"
  }
  s3_thumbnail = {
    bucket_name = "bucket2"
  }
  app = {
    image_id = "ami-09d3b3274b6c5d4aa"
    instance_type = "t2.small"
    key_name = "vockey"
    max_size = 0
    min_size = 0
  }
}
