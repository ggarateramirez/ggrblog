class ApplicationController < ActionController::Base
  protect_from_forgery
  included SessionsHelper
end
