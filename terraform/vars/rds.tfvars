# Network Vars
region              = "us-east-1"
vpc_id              = "vpc-0dc8af9a640f18a1a"
subnet_ids          = ["subnet-0dda2104030f413fb", "subnet-0e541222b36806bcc", "subnet-0528c88dea43824e6"]
multi_az            = false
publicly_accessible = true

# DB Vars
db_engine                   = "mysql"
db_storage_type             = "gp3"
engine_version              = "8.0"
db_username                 = "techiescamp"
db_instance_class           = "db.t3.micro"
db_storage_size             = 20
set_secret_manager_password = true
set_db_password             = false
db_password                 = "rdssecret"

# Security Group Vars
ingress_from_port   = 3306
ingress_to_port     = 3306
ingress_protocol    = "tcp"
ingress_cidr_blocks = ["0.0.0.0/0"]

egress_from_port   = 0
egress_to_port     = 0
egress_protocol    = "-1"
egress_cidr_blocks = ["0.0.0.0/0"]

# Backup vars
backup_retention_period  = 7
delete_automated_backups = true
copy_tags_to_snapshot    = true
skip_final_snapshot      = true
apply_immediately        = true

# Parameter store
parameter_store_secret_name = "/dev/petclinic/rds_endpoint"
type                        = "String"

# Tag Vars
owner       = "techiescamp"
environment = "dev"
cost_center = "techiescamp-commerce"
application = "rds"

# changed vpc,and subnet id's and db_storage_type from gp2 to gp3