# frozen_string_literal: true

class ApplicationController < ActionController::Base
  # This skip should only be uncommented for testing with curl locally
  # skip_before_action :verify_authenticity_token
end
