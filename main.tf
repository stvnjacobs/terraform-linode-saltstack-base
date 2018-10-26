resource "linode_instance" "nginx" {
  region = "us-east"
  type = "g6-nanode-1"

  image = "linode/debian9"
  swap_size = 256
  authorized_keys = ["${chomp(file("~/.ssh/id_rsa.pub"))}"]
  root_pass = "${var.root_pass}"

  provisioner "salt-masterless" {
    local_state_tree = "${path.root}/salt"
    remote_state_tree = "/srv/salt"

    connection {
      type = "ssh"
      user = "root"
    }
  }
}
