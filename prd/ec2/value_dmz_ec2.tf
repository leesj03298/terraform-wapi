locals {
  ami = {

  }
  ebs_device_encrypted = {
    encrypted  = false
    kms_key_id = null
  }

  dmz_ec2 = [
    {
      tf_identifier        = "dmz-poweb-01"
      ec2_name             = "ww-an2-ec2-api-p-dmz-poweb-01"
      ami                  = "ami-0d20bf029bfe18dd2"
      instance_type        = "t3.micro"
      subnet_name          = "ww-an2-sbn-api-p-dmz-wb-2a"
      security_group_names = ["ww-an2-sgec2-api-p-dmz-svc-01", "ww-an2-sgec2-api-p-dmz-mgmt-01"]
      root_block_device = [{
        ebs_block            = ["gp3", "51"]
        delte_on_termination = true
        ebs_block_device     = local.ebs_device_encrypted
      }]
      ebs_block_devices = [
        {
          ebs_block = [ "/dev/sdb", "gp3", "100"]
          delete_on_termination = true
          ebs_device_encrypted = local.ebs_device_encrypted
        },
        {
          ebs_block = [ "/dev/sdc", "gp3", "50"]
          delete_on_termination = true
          ebs_device_encrypted = local.ebs_device_encrypted
        },
        {
          ebs_block = [ "/dev/sdd", "gp3", "100"]
          delete_on_termination = true
          ebs_device_encrypted = local.ebs_device_encrypted
        },
        {
          ebs_block = [ "/dev/sde", "gp3", "10"]
          delete_on_termination = true
          ebs_device_encrypted = local.ebs_device_encrypted
        }
      ]
      #user_data = local.user_data
      private_ip = "10.3.1.101"
      public_ip  = false
      # iam_instance_profile = "role_name"
    },
        {
      tf_identifier        = "dmz-poweb-02"
      ec2_name             = "ww-an2-ec2-api-p-dmz-poweb-02"
      ami                  = "ami-0d20bf029bfe18dd2"
      instance_type        = "t3.micro"
      subnet_name          = "ww-an2-sbn-api-p-dmz-wb-2c"
      security_group_names = ["ww-an2-sgec2-api-p-dmz-svc-01", "ww-an2-sgec2-api-p-dmz-mgmt-01"]
      root_block_device = [{
        ebs_block            = ["gp3", "51"]
        delte_on_termination = true
        ebs_block_device     = local.ebs_device_encrypted
      }]
      ebs_block_devices = [
        {
          ebs_block = [ "/dev/sdb", "gp3", "100"]
          delete_on_termination = true
          ebs_device_encrypted = local.ebs_device_encrypted
        },
        {
          ebs_block = [ "/dev/sdc", "gp3", "50"]
          delete_on_termination = true
          ebs_device_encrypted = local.ebs_device_encrypted
        },
        {
          ebs_block = [ "/dev/sdd", "gp3", "100"]
          delete_on_termination = true
          ebs_device_encrypted = local.ebs_device_encrypted
        },
        {
          ebs_block = [ "/dev/sde", "gp3", "10"]
          delete_on_termination = true
          ebs_device_encrypted = local.ebs_device_encrypted
        }
      ]
      #user_data = local.user_data
      private_ip = "10.3.1.117"
      public_ip  = false
      # iam_instance_profile = "role_name"
    }
  ]
}