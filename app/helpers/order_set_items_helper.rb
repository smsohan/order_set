module OrderSetItemsHelper
  def include_comments?
    params[:include_comments] == '1'
  end
end
