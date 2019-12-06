Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post :load_category, to: 'categories#load_category'
      get :list_category, to: 'categories#list_category'
      post :create_category, to: 'categories#create_category'
      post :edit_category, to: 'categories#edit_category'
      post :delete_category, to: 'categories#delete_category'

      get :list_product, to: 'products#list_product'
      # resources :products
    end
  end
end
