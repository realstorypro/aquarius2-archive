class ApplicationController < ActionController::Base
  include SettingsHelper

  include Pundit
  include SiteSettings
  include Trackable
end
