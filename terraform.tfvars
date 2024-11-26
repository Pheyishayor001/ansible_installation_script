ec2_instance_type = "t2.micro"
instance_name     = "web"
region            = "us-east-1"

instance_configurations = {
  master = {
    name      = "master_instance"
    user_data = "./install_ansible.sh"
  },
  web_server = {
    name      = "web_server"
    user_data = ""
  }
  db_server = {
    name      = "db_server"
    user_data = ""
  }
}