variable "availability_zone" {
  type = list(string)
  description = "zonas de disponibilidade para as subnets"
  default = ["us-east-1a", "us-east-1b"]
}