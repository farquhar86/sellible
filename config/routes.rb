Rails.application.routes.draw do
  root to: 'sale#index'
  get '/sale/new', to: "sale#new"
  get '/product/search', to: 'products#search'
  get '/product/price', to: 'products#find', as: 'product_find'
  post '/product/price', to: 'products#find'
  post '/sale/new', to: 'sale#new', as: 'sale_test'
  post '/sale/create', to: 'sale#create'
  get '/sales/:id', to: "sale#show", as: "sale"

   get "/login", to: "sessions#new"

  post "/sessions", to: "sessions#create"

  post "/sign_out", to: "sessions#destroy" 

  # get '/sales/:id', to: "sales#show", as: "success"

  resources :sales
  resources :products

end


#         Prefix Verb   URI Pattern                  Controller#Action
#           root GET    /                            sale#index
#       sale_new GET    /sale/new(.:format)          sale#new
# product_search GET    /product/search(.:format)    product#search
#          sales GET    /sales(.:format)             sales#index
#                POST   /sales(.:format)             sales#create
#       new_sale GET    /sales/new(.:format)         sales#new
#      edit_sale GET    /sales/:id/edit(.:format)    sales#edit
#           sale GET    /sales/:id(.:format)         sales#show
#                PATCH  /sales/:id(.:format)         sales#update
#                PUT    /sales/:id(.:format)         sales#update
#                DELETE /sales/:id(.:format)         sales#destroy
#       products GET    /products(.:format)          products#index
#                POST   /products(.:format)          products#create
#    new_product GET    /products/new(.:format)      products#new
#   edit_product GET    /products/:id/edit(.:format) products#edit
#        product GET    /products/:id(.:format)      products#show
#                PATCH  /products/:id(.:format)      products#update
#                PUT    /products/:id(.:format)      products#update
#                DELETE /products/:id(.:format)      products#destroy