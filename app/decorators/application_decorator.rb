class ApplicationDecorator < Draper::Base

  def self.has_decorator_for?(resource, format)
    true if decorator_class_for(resource, format)
  end

  def self.decorator_for(resource, format)
    if decorator_class = decorator_class_for(resource, format)
      decorator_class.decorate(resource)
    end
  end

  private

  # (<#Crypto id: 1>, :api_v1) => API_V1::CryptoDecorator
  def self.decorator_class_for(resource, format)
    namespace_for(format).const_get(decorator_name_for(resource))
  rescue NameError => e
    raise if e.is_a?(NoMethodError)
    nil
  end

  def self.namespace_for(format)
    Object.const_get(format.to_s.upcase)
  end

  def self.decorator_name_for(resource)
    resource.class.name + "Decorator"
  end

end