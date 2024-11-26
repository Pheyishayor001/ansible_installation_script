output "Instance_Public_IP" {
  description = "Instance Public IP"
  value       = { for k, instance in module.ec2_instance : k => instance.public_ip }
}
output "Instance_Private_IP" {
  description = "Instance Public IP"
  value       = { for k, instance in module.ec2_instance : k => instance.private_ip }
}