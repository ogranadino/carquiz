Rails.application.routes.draw do

  # Routes for the Photo resource:
  # CREATE
  get('/photos/new', { :controller => 'photos', :action => 'new' })
  get('/create_photo', { :controller => 'photos', :action => 'create' })

  # READ
  #get('/photos', { :controller => 'photos', :action => 'index' })
  get('/photos/:id', { :controller => 'photos', :action => 'show' })

  # UPDATE
  get('/photos/:id/edit', { :controller => 'photos', :action => 'edit' })
  get('/update_photo/:id', { :controller => 'photos', :action => 'update' })

  # DELETE
  get('/delete_photo/:id', { :controller => 'photos', :action => 'destroy' })
  #------------------------------

  # Routes for the Answer resource:
  # CREATE
  get('/answers/new', { :controller => 'answers', :action => 'new' })
  get('/answers/new/:id', { :controller => 'answers', :action => 'new' })
  get('/create_answer', { :controller => 'answers', :action => 'create' })



  # READ
  #get('/answers', { :controller => 'answers', :action => 'index' })
  get('/answers/:id', { :controller => 'answers', :action => 'show' })

  # UPDATE
  get('/answers/:id/edit', { :controller => 'answers', :action => 'edit' })
  get('/update_answer/:id', { :controller => 'answers', :action => 'update' })
  get('/answervoteup/:id', { :controller => 'answers', :action => 'voteup' })
  get('/answervotedown/:id', { :controller => 'answers', :action => 'votedown' })

  # DELETE
  get('/delete_answer/:id', { :controller => 'answers', :action => 'destroy' })
  #------------------------------

  # Routes for the Question resource:
  # CREATE
  get('/questions/new/:id', { :controller => 'questions', :action => 'new' })
  get('/create_question', { :controller => 'questions', :action => 'create' })

  # READ
  #get('/questions', { :controller => 'questions', :action => 'index' })
  get('/questions/:id', { :controller => 'questions', :action => 'show' })

  # UPDATE
  get('/questions/:id/edit', { :controller => 'questions', :action => 'edit' })
  get('/update_question/:id', { :controller => 'questions', :action => 'update' })

  # DELETE
  get('/delete_question/:id', { :controller => 'questions', :action => 'destroy' })
  #------------------------------

  # Routes for the Auto resource:
  # CREATE
  get('/autos/new', { :controller => 'autos', :action => 'new' })
  get('/create_auto', { :controller => 'autos', :action => 'create' })

  # READ
  #get('/autos', { :controller => 'autos', :action => 'index' })
  get('/autos/:id', { :controller => 'autos', :action => 'show' })
  get('/showup/', { :controller => 'autos', :action => 'show' })


  # UPDATE
  get('/autos/:id/edit', { :controller => 'autos', :action => 'edit' })
  get('/update_auto/:id', { :controller => 'autos', :action => 'update' })

  # DELETE
  get('/delete_auto/:id', { :controller => 'autos', :action => 'destroy' })
  #------------------------------

  devise_for :users
  get("/", { :controller => "first", :action => "index" })

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
