Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :states, only: [:index, :show]
  root to: "states#index"
  resources :parks do
    resources :activities
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
