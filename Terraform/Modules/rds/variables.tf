variable "my_subnet_private01" {
  type = string
}

variable "my_subnet_private02" {
  type = string
}

variable "security_group_rds" {
  type = string
}

variable "db_name" {
  type    = string
  default = "value"
}

variable "allocation_storage" {
  type    = number
  default = 20
}

variable "storage_type" {
  type    = string
  default = "gp3"
}

variable "engine" {
  type    = string
  default = "mysql"
}

variable "engine_version" {
  type    = string
  default = "8.0.33"
}

variable "instance_class" {
  type    = string
  default = "db.t3.micro"
}

variable "username" {
  type    = string
  default = "admin"
}

variable "password" {
  type    = string
  default = "passwd12345"
}

variable "port" {
  type    = string
  default = "3306"
}

variable "identifier" {
  type    = string
  default = "adefinir"
}