Rails.application.routes.draw do
  
  devise_for :users,controllers: {registrations: 'users/registrations'}
  as :user do

    get "signin" => 'devise/sessions#new'
    delete "signout" => 'devise/sessions#destroy'



  end

  resources :users,only: [:show]



  # root 'pages#home'
  root to: 'users#current_user_home'

  # resource :pages
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
