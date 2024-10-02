terraform {
  required_providers {
    render = {
      version = "1.1.0"
      source  = "render-oss/render"
    }
  }
}

provider "render" {
  api_key  = "rnd_"
  owner_id = "usr-"
}

resource "render_web_service" "web" {
  name   = "terraform-web-service"
  plan   = "starter"
  region = "ohio"

  runtime_source = {
    image = {
      image_url = "image"
      tag       = "latest"
    }
  }
}
