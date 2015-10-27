Rails.application.routes.draw do
  

  root to: 'welcome#index'

  get '/sales', to: "sales#index"
  get '/sale/new/:id', to: "sales#newId", as: 'new_sale_id'
  get '/sales/:id', to: "sales#show", as: "sale"
  post '/sale/new', to: 'sales#new', as: 'sale_new'
  post '/sale/create', to: 'sales#create'
  post "/sales/:id", to: "sales#update", as: "update_sale" # submit my edits
  delete "/sales/:id", to: "sales#destroy", as: "delete_sale"
  

  get '/product/search', to: 'products#search'
  get '/products', to: 'products#index', as: "products"
  get '/product/price', to: 'products#find', as: 'product_find'
  post '/product/price', to: 'products#find'
  post "/products", to: "products#create"
  patch "/products", to: "products#update", as: "update_product"
  delete "/products/:id", to: "products#destroy", as: "delete_product"

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