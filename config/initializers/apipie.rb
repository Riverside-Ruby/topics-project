Apipie.configure do |config|
  config.app_name                = "Riverside Ruby: Suggest a Topic API"
  config.api_base_url            = "/api/v0"
  config.doc_base_url            = "/doc"
  config.markup = Apipie::Markup::Markdown.new
  config.api_controllers_matcher = "#{Rails.root}/app/controllers/api/v0/*.rb"
  config.app_info = <<EOF
# Overview

Provides an API to manage topic submissions for the Riverside Ruby and Riverside JS user groups.

EOF
end
