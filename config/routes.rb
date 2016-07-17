Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :order_set_items
    end

    namespace :v2 do
      resources :order_set_items do
        resources :comments
      end
    end
  end
end
