ActionController::Renderers.add :api_v1 do |resource, options|
  self.content_type = Mime::API_V1
  self.response_body = resource.to_api_v1(options)
end