Rails.application.routes.draw do


  devise_for :users
  #root url
  root 'trips#index'
  # Routes for the Location resource:
  # CREATE
  get "/locations/new", :controller => "locations", :action => "new"
  post "/create_location", :controller => "locations", :action => "create"

  # READ
  get "/locations", :controller => "locations", :action => "index"
  get "/locations/:id", :controller => "locations", :action => "show"

  # UPDATE
  get "/locations/:id/edit", :controller => "locations", :action => "edit"
  post "/update_location/:id", :controller => "locations", :action => "update"

  # DELETE
  get "/delete_location/:id", :controller => "locations", :action => "destroy"
  #------------------------------

  # Routes for the Meal resource:
  # CREATE
  get "/meals/new", :controller => "meals", :action => "new"
  post "/create_meal", :controller => "meals", :action => "create"

  # READ
  get "/meals", :controller => "meals", :action => "index"
  get "/meals/:id", :controller => "meals", :action => "show"

  # UPDATE
  get "/meals/:id/edit", :controller => "meals", :action => "edit"
  post "/update_meal/:id", :controller => "meals", :action => "update"

  # DELETE
  get "/delete_meal/:id", :controller => "meals", :action => "destroy"
  #------------------------------

  # Routes for the Stay resource:
  # CREATE
  get "/stays/new", :controller => "stays", :action => "new"
  post "/create_stay", :controller => "stays", :action => "create"

  # READ
  get "/stays", :controller => "stays", :action => "index"
  get "/stays/:id", :controller => "stays", :action => "show"

  # UPDATE
  get "/stays/:id/edit", :controller => "stays", :action => "edit"
  post "/update_stay/:id", :controller => "stays", :action => "update"

  # DELETE
  get "/delete_stay/:id", :controller => "stays", :action => "destroy"
  #------------------------------

  # Routes for the Leg resource:
  # CREATE
  get "/legs/new", :controller => "legs", :action => "new"
  post "/create_leg", :controller => "legs", :action => "create"

  # READ
  get "/legs", :controller => "legs", :action => "index"
  get "/legs/:id", :controller => "legs", :action => "show"

  # UPDATE
  get "/legs/:id/edit", :controller => "legs", :action => "edit"
  post "/update_leg/:id", :controller => "legs", :action => "update"

  # DELETE
  get "/delete_leg/:id", :controller => "legs", :action => "destroy"
  #------------------------------

  # Routes for the Trip resource:
  # CREATE
  get "/trips/new", :controller => "trips", :action => "new"
  post "/create_trip", :controller => "trips", :action => "create"

  # READ
  get "/trips", :controller => "trips", :action => "index"
  get "/trips/:id", :controller => "trips", :action => "show"

  # UPDATE
  get "/trips/:id/edit", :controller => "trips", :action => "edit"
  post "/update_trip/:id", :controller => "trips", :action => "update"

  # DELETE
  get "/delete_trip/:id", :controller => "trips", :action => "destroy"
  #------------------------------

  # Routes for the Restaurant resource:
  # CREATE
  get "/restaurants/new", :controller => "restaurants", :action => "new"
  post "/create_restaurant", :controller => "restaurants", :action => "create"

  # READ
  get "/restaurants", :controller => "restaurants", :action => "index"
  get "/restaurants/:id", :controller => "restaurants", :action => "show"

  # UPDATE
  get "/restaurants/:id/edit", :controller => "restaurants", :action => "edit"
  post "/update_restaurant/:id", :controller => "restaurants", :action => "update"

  # DELETE
  get "/delete_restaurant/:id", :controller => "restaurants", :action => "destroy"
  #------------------------------

  # Routes for the Hotel resource:
  # CREATE
  get "/hotels/new", :controller => "hotels", :action => "new"
  post "/create_hotel", :controller => "hotels", :action => "create"

  # READ
  get "/hotels", :controller => "hotels", :action => "index"
  get "/hotels/:id", :controller => "hotels", :action => "show"

  # UPDATE
  get "/hotels/:id/edit", :controller => "hotels", :action => "edit"
  post "/update_hotel/:id", :controller => "hotels", :action => "update"

  # DELETE
  get "/delete_hotel/:id", :controller => "hotels", :action => "destroy"
  #------------------------------

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
