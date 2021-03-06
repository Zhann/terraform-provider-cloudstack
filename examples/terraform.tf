variable "endpoint" {}
variable "api_key" {}
variable "secret_key" {}

provider "cs" {
  endpoint   = "${var.endpoint}"
  api_key    = "${var.api_key}"
  secret_key = "${var.secret_key}"
}

resource "cs_virtualmachine" "vm01" {
  zone_name = "zone01"
  serviceoffering_name = "t1.micro"
  template_name = "CentOS6.5"
  display_name = "vm01"
}
