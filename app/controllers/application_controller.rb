class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionHelper

    # Force signout to prevent CSRF attacks
    def handle_unverified_request
      sign_out
    end
end