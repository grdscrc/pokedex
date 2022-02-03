Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pokemon#index"
  resources :pokemon, only: [
    :edit,
    :new,
    :create,
    :update,
    :delete
  ]
end
