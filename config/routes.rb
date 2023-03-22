Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists, only:[:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :items, only:[:new, :create]
  end
  resources :items, only:[:edit, :update, :destroy]
  resources :chatrooms, only:[:show, :index, :new] do
    resources :messages, only: :create
  end
end
