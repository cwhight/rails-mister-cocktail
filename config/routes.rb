Rails.application.routes.draw do

  root to: "cocktails#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, except: :index  do
    resources :doses, only: [:create, :destroy]
    resources :reviews, only: [:new, :create]
  end

  # resources :doses, only: :destroy
end
