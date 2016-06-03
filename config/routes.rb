Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root 'setup#index'

  get '/setup' => 'setup#index'
  post '/setup' => 'setup#change', as: 'change_setup'
  get '/clearcache' => 'setup#clear_cache'
  
  get '/instances' => 'instances#index'
  get '/reservedinstances' => 'reserved_instances#index'
  get '/summary' => 'summary#index'
  get '/recommendations' => 'summary#recommendations'
  post '/recommendations' => 'summary#apply_recommendations', as: 'apply_recommendations'
  get '/logrecommendations' => 'summary#log_recommendations'
  get '/health' => 'summary#health'

  post '/periodicworker' => 'summary#periodic_worker'
  post '/s3importer' => 'summary#s3importer'
  post '/populatedb' => 'summary#populatedb'


  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
