variable "instances" {
  type = map
  default = {
    mysql = "t3.small"
    backend = "t3.micro"
    frontend = "t3.large"
    }
}
variable "domain_name" {
    default = "mt15.store"
}

variable "zone_id" {
    default = "Z0230659D3XXD5DTMN1D"
}