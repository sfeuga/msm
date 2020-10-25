# frozen_string_literal: true

###
# ActionController class
#
class ApplicationController < ActionController::Base
  before_action :authenticate_user!
end
