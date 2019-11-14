Rails.application.routes.draw do
  get 'review/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resources :doses, only: [:create, :destroy]
    resources :reviews, only: [:new, :create]
  end

  # resources :doses, only: :destroy
end
