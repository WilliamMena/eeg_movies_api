Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # resources :movie, only: [:show]
  namespace :api do
    resources :movies, only: [:index, :show]
  end

end
