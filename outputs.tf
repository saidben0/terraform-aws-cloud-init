output "aws_sben_amis" {
    value = data.aws_ami_ids.sben_amis.ids[0]
}

output "user_data_template" {
    value = templatefile("${path.module}/userdata.yml", {
      devnames = join(" ", local.device_names)
      })
}

#output "user_data" {
#    value = data.template_file.user_data.rendered
#}
#output "nvme-to-block-template" {
#  value = templatefile("${path.module}/nvme-to-block-mapping.sh", {
#    devnames = join(" ", local.device_names)
#  })
#}