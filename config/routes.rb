Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :recipes do
      resources :reviews, only: [:new, :create, :show]
      resources :doses, only: [:new, :create]
    end
    resources :doses, only: [:destroy]
    resources :profiles, only: [:show, :edit, :update]

end
