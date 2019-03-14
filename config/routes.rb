Rails.application.routes.draw do
  resources :ingredients, only: [:index, :show]
  resources :recipes, only: [:index, :show]
end
