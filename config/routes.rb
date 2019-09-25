Rails.application.routes.draw do
  root "home#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "about" => "home#about"

  get "signup" => "user#new"
  get "user/create" => "user#create"
  post "user/edit" => "user#edit"
  get "login" => "user#login_form"
  post "logout" => "users#logout"


  get "posts/edit" => "posts#edit"
  get "posts/new" => "posts#new"
  get "posts/index" => "posts#index"
  get "posts/show" => "posts#show"



end
