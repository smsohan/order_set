module Pagable
  extend ActiveSupport::Concern

  included do
    helper_method :page, :per_page
  end

  def page
    (params[:page] && params[:page].to_i) || 1
  end

  def per_page
    (params[:per_page] && params[:per_page].to_i) || 5
  end
end