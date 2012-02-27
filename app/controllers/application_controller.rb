class ApplicationController < ActionController::Base
  protect_from_forgery
  require_relative '../renderers/api_v1_renderer'
  self.responder = ApplicationResponder
end
