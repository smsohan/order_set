module Api
  module V2
    class CommentsController < ApplicationController
      before_action :load_objects

      def index
        @comments = @order_set_item.comments.page(page).per(per_page)
      end

      def show
      end

      def create
        comment = @order_set_item.comments.create!(comment_params)
        render nothing: true, status: :created, location: api_v2_order_set_item_comment_path(@order_set_item.id, comment.id)
      end

      private
      def load_objects
        @order_set_item = OrderSetItem.find(params[:order_set_item_id])
        @comment = @order_set_item.comments.find(params[:id]) if params[:id]
      end

      def comment_params
        params.require(:comment).permit(:username, :text)
      end

    end
  end
end