class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  config.serve_static_assets = true
end
