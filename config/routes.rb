Demo::Application.routes.draw do
  #get "questions/show_questions"
  #get "questions/update_questions"
  get "answer/new_answer"
  get "answer/show_answers"
  
  get "test/new_test"
  get "test/questions"
  get "test/evaluation"
  get "test/testlist"
  get "login/show_login"
  get "login" => "login#create_login", as: "create_login"
  

  delete "logout" => "login#logout", as: "logout"

  post "login" => "login#create_login", as: "login"

  get "login/logout"

  
  resources :users, only: [:new, :create]
  #resources :lessons
  get "lessons" => "lessons#view_lessonsList", as: "lessons"
  
  get "lessons/:id/tests" => "lessons#tests", as: "lesson_tests"

  #get "test/:id/questions" => "questions#show_questions", as: "test_questions"
  get "lessons/:id" => "lessons#view_lesson", as: "lesson"
  get "lessons/:id/tests/:test_id/questions" => "lessons#questions", as: "questions"

  get "lessons/:id/tests/:test_id/questions" => "lessons#answers", as: "answers"

  get "lessons/view_test"
  get "lessons/view_evaluation"


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
