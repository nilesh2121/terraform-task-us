# set a region
variable "region" {
    type = string
    default = "ap-south-1"
  
}
# network cidr range
variable "network_cidrs" {
    type = string
    default = "10.0.0.0/16"
  
}
# availability zone 1a
variable "subnet_azs_1a" {
    type = string
    default = "ap-south-1a"
  
}

# availability zone 1b
variable "subnet_azs_1b" {
    type = string
    default = "ap-south-1b"
  
}


# subnet name tag for web
variable "subnet_name_tags_web" {
    type = string
    default = "web"
  
}

# subnet name tag for db
variable "subnet_name_tags_db" {
    type = string
    default = "db" 
  
}

# subnet cidr range for public
variable "subnet_cidrs_public" {
    type = string
    default = "10.0.0.0/24"
  
}

# subnet cidr range for private

variable "subnet_cidrs_private" {
    type = string
    default = "10.0.1.0/24"
  
}

# added the keypath location

variable "keypath" {
    type = string
    default = "~/.ssh/id_rsa.pub"
  
}


