module Api
  module V1
    class OrderSetItemsController < ApplicationController
      def index
        @order_set_items = OrderSetItem.all.page(page).per(per_page)
      end

      def show
        @order_set_item = OrderSetItem.find(params[:id])
      end

      def create
        order_set_item = OrderSetItem.create!(order_set_item_params)
        render nothing: true, status: :created, location: url_for(action: :show, id: order_set_item.id)
      end

      def update
        @order_set_item = OrderSetItem.find(params[:id])
        @order_set_item.update_attributes!(order_set_item_params)
        render :show
      end

      def destroy
        OrderSetItem.find(params[:id]).destroy
        render nothing: true, status: :ok
      end

      private

      def order_set_item_params
        params.require(:order_set_item).permit(:name, :description, :parent_id)
      end

    end
  end
end
