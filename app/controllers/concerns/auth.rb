module Auth
  extend ActiveSupport::Concern

  included do
    before_action :authenticate, only: [:create, :update, :destroy]
  end

  def authenticate
    authenticate_or_request_with_http_basic do |user, pass|
      user.present? && pass.present?
    end
  end
end