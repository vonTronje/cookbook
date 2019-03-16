Rails.application.routes.draw do
  resources :ingredients, only: [:index, :show]
  resources :recipes, only: [:index, :show]
  resources :recipe_ingredients, only: [:index, :show]
end
