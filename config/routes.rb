Rails.application.routes.draw do
  devise_for :users
  as :user do

    get "signin" => 'devise/sessions#new'
    delete "signout" => 'devise/sessions#destroy'



  end



  root 'pages#home'

  get 'about' => "pages#about"
  get 'contact' => "pages#contact"
  resource :pages
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
