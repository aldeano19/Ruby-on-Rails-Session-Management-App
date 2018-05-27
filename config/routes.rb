Rails.application.routes.draw do
  get "/" => "pages#welcome"

  post "/register" => "pages#validate_registration"

  post "/login" => "pages#login"

  get "/profile" => "pages#show_profile"

  delete "/logout" => "pages#logout"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
