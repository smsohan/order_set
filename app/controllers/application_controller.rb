class ApplicationController < ActionController::Base
  include Pagable
  include ErrorHandlers
  include Auth
  skip_before_action :verify_authenticity_token

end
