variable "region" {
  description = "La región de AWS para desplegar los recursos."
  type        = string
  default     = "us-east-1"
}

variable "master_username" {
  description = "Nombre de usuario master para el clúster de Redshift."
  type        = string
}

variable "master_password" {
  description = "Contraseña para el usuario master del clúster de Redshift."
  type        = string
}
