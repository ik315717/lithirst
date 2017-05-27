class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  config.time_zone = 'Eastern Time (US & Canada)'

  before_filter :set_timezone

  def set_timezone
   Time.zone = 'EST'
  end


end
