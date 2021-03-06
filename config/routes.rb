Rails.application.routes.draw do

  get 'contact' => 'home#new'
  get 'search' => 'home#search'
  get 'wx' => 'home#wx'
  post 'wx' => 'home#wx'
  post '/contact'=>'home#contact'

  get 'cooperate' => 'home#cooperate'

  get 'service_mode' => 'home#service_mode'

  get 'about_us' => 'home#about_us'

  get 'team' => 'home#team'

  get 'cases' => 'projects#index'

  resources :project_categories
  resources :projects
  resources :news

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'
  resources :categories do
    resources :projects
  end

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
  namespace :admin do
    root :to =>'sessions#index'
    get  'login'            =>'sessions#new',      :as  =>:login
    post '/sessions/create' =>'sessions#create',   :as =>:logined
    get 'logout'           =>'sessions#destroy',  :as =>:logout
    resources :project_categories
    resources :projects
    resources :project_photos
    resources :news
  end #namespace /admin

end
