Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pokemon#index"
  resources :pokemon, except: [:index, :new, :edit]
end
