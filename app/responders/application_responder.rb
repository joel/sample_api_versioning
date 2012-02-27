# app/responders/application_responder.rb
class ApplicationResponder < ActionController::Responder
  def resourceful?
    super || ApplicationDecorator.has_decorator_for?(resource, format)
  end
end