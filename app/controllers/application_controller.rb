class ApplicationController < ActionController::Base

  include ApplicationHelper

  protect_from_forgery

  http_basic_authenticate_with :name => "admin", :password => "allthewidgets" if Rails.env.production?
  
end
