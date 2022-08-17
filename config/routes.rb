Rails.application.routes.draw do
  get 'restaurants/index'
  resources :restaurants do
    resources :reviews, only: [ :new, :create]
  end
end
