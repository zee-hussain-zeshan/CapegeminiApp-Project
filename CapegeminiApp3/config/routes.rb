Rails.application.routes.draw do
  resources :takes
  resources :takes
  resources :takes
  resources :assessments
  resources :assessments
  resources :sessions
  resources :attends
  get 'attends/index'
  get 'pages/index'
  get 'pages/chooseModule'
  get 'pages/chooseSession'
  get 'pages/showStudentsByModule'
  get 'pages/showSessionsByModule'
  get 'pages/attendance'
  get 'pages/session'
  get 'pages/dataView'

  post 'pages/chooseModule' =>'pages#chooseModule'
  post 'pages/showStudentsByModule' =>'pages#showStudentsByModule'

  post 'pages/chooseSession' =>'pages#chooseSession'
  post 'pages/showSessionsByModule' =>'pages#showSessionsByModule'
  
  post 'pages/attends_processing' =>'pages#attends_processing'
  post 'pages/attendance' =>'pages#attendance'
  post 'pages/index' =>'pages#index'
  
  get 'enrolmentcsvs/enrolments_upload' => 'enrolmentcsvs#enrolments_upload'
  post 'import' => 'enrolmentcsvs#import'

  get 'attendscsvs/attends_upload' => 'attendscsvs#attends_upload'
  post 'attendscsvs/import' => 'attendscsvs#import'

  resources :enrolments
  resources :courses
  resources :students
  resources :pages

  resources :enrolmentcsvs do
    collection { post :import1 }
    collection { post :import2 }
  end

  resources :attendscsvs do
    collection { post :import }
  end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root 'pages#index'
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
