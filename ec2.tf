provider "aws" {
  region     = "ap-south-1"
}
resource "aws_instance" "Demo" {
  ami           = "ami-0597375488017747e"
  instance_type = "t2.micro"
  key_name = "aws"
  tags = {
    Name = "benz"
  }
user_data = <<EOF
#!/bin/bash
echo "Copying the SSH Key Of Jenkins to the server"
sudo echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCspqLKo+E+5HB60Vj7Ti838f7x/Vy7QXRDTjMS3pXw5jtVwjroIoqlby3MYxX7pYbKCM79UD8hO7swUk7yBT0TDgQTbzUvA4smOlPCA6fJ4TGiupC/IBrU85+Iq81Hj7RhbICacuHGcA+L6OTAaEMjzJ4NBkbyfaDI8tErxY35EnFHkXM4oUtwQyb4nKawTm5a1sFBq56nSg0i69VrMky2iwpQnkgbIAtdiHmQYZD1sH1qsbiLN515+DQk0CdNIrdquxuRVvgnsOnO0AqCyctwwPLZuLIe1y7Zs8Aww9E3x/IEctHpM/JQHMlWvUthwC4tk5czozdIQe1M1QM2RfOkIfFDBEXg9aIJFs3MbdqCumjudXy0n2Da6WfDBXTN8QMy8+8N3mwdxlquYqa4x7hIQaoLO50zVCZljo9xpcyFDs/pVzpe0y5YLR7OnfcvT9P5GF6jlLQi0v1Yr2/u3aJh+MC4jmZpnTPmgVN4QvDoLba9L/mdpV7fsxj+SJzSaGs= root@ip-172-31-42-86" >> /home/ubuntu/.ssh/authorized_keys
EOF
}
