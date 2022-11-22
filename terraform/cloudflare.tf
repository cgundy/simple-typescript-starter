variable "domain" {
  default = "example.com"
}

resource "cloudflare_worker_script" "main_script" {
  zone = "${var.zone}"
  content = "${file("src/index.ts")}"
}

resource "cloudflare_worker_route" "catch_all_route" {
  zone = "${var.zone}"
  pattern = "*${var.zone}/*"
  enabled = true
  depends_on = ["cloudflare_worker_script.main_script"]
}