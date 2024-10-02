terraform {
  required_providers {
    render = {
      version = "1.1.0"
      source  = "render-oss/render"
    }
  }
}

provider "render" {
  api_key  = "rnd"
  owner_id = "usr"
}

resource "render_postgres" "postgres" {
  name    = "database-teste"
  plan    = "free"
  region  = "ohio"
  version = "14"

  database_name = "n8n_database"
  database_user = "user_n8n"
}
