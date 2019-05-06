Rails.application.routes.draw do
  mount ActionCable.server => '/cable'

  devise_for :users
  root to: 'pages#home'

  resources :items do
    resources :listings, only: %i[new create]
    resources :transactions

  end

  resources :listings, only: %i[ index show edit update destroy]



  resources :users, only: [:index] do
    member do
      post :follow
      post :unfollow
    end
  end
  resources :friend_requests, only: [:index, :create, :destroy]

  resources :chats, only: [:index, :create, :show] do
    resources :messages, only: [:index, :create]
  end

  resources :users, only: %i[show index] do
    resources :wallets, only: %i[new create]
  end

  resources :wallets, only: %i[edit update destroy]


  resources :reviews do
    resources :users_reviews
    resources :items_reviews
  end




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
