Rails.application.routes.draw do

  root 'home#index'
  get '/about' => 'home#about'
  get '/peaches' => 'home#peaches'
  get '/gallery' => 'photos#index'
  # get '/ordering' => 'home#ordering' see below store#index
  get '/location' => 'home#location'
  get '/contacts' => 'contacts#new'
  get '/FAQs' => 'home#FAQs'
  get '/InSeasonNow' => 'home#season'
  get '/PickYourOwn' => 'home#pick'
  get '/PeachFacts' => 'home#facts'


  #below shortens the url that the user has to enter by removing the /index part and map it to the full action
  get 'admin' => 'admin#index'

  # with session actions, we completely change the url (replacing session/create with just 'login')
  # note that login is mapped to both the new and create actions
  # shortcut: wrapping the session route declarations in a block and passing it to a controller() class method
    controller :sessions do
      get 'login' => :new
      post 'login' => :create
      delete 'logout' => :destroy
    end

  # get 'sessions/create'
  # get 'sessions/destroy'

  resources :users
  resources :orders
  resources :line_items
  resources :carts

  resources :stores, controller: :store, only: :index

  resources :products do
    get :who_bought, on: :member
  end

  resources :products

  resources :subscribers, only: [:create, :index]

  resources :contacts
  # , only [:new, :create]
  resources :photos, only: [:new, :create, :index, :destroy]

end




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

