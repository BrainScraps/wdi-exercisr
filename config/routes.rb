WdiExercisr::Application.routes.draw do

  root :to => 'users#index'
  resources :user_sessions
  resources :users do
  	resources :exercises
  end

  match 'my_exercises' => 'exercises#index', :as => :my_exercises
  match 'login' => 'user_sessions#new', :as => :login
  match 'logout' => 'user_sessions#destroy', :as => :logout
  post 'chart' => 'exercises#chart', :as => :chart
end
