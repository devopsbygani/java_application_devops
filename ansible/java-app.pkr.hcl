variable "ami_id" {
  type    = string
  default = "ami-0ec10929233384c7f"  # replaced with ubunut us-east-1 ami id
}

locals {
    app_name = "java-app-1.0.1"
}

source "amazon-ebs" "java-app" {
  ami_name      = "PACKER-${local.app_name}"
  instance_type = "t2.medium"
  region        = "us-east-1" # changed from west to east region
  source_ami    = "${var.ami_id}"
  ssh_username  = "ubuntu"
  tags = {
    Env  = "DEMO"
    Name = "PACKER-${local.app_name}"
  }
}

build {
  sources = ["source.amazon-ebs.java-app"]

  provisioner "ansible" {
    playbook_file = "java-app.yml"
  }

}
