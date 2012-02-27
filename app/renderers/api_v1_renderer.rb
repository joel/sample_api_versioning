ActionController::Renderers.add(:api_v1) do |resource, options|
  self.content_type = Mime::API_V1
  decorated_resource = ApplicationDecorator.decorator_for(resource, :api_v1) || resource
  render options.merge(:json => decorated_resource)
end