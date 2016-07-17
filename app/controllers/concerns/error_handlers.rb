module ErrorHandlers
  extend ActiveSupport::Concern

  included do

    rescue_from ActiveRecord::RecordNotFound do
      render status: :not_found, nothing: true
    end

    rescue_from ActiveRecord::RecordInvalid do |error|
      @error = error
      render :invalid, status: :unprocessable_entity
    end
  end
end