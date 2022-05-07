Rails.application.routes.draw do
  root to: 'home#index'
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts, :users, :salon
  get 'users/index' => 'users#index'
  get'salon/index' => 'salon#index'
end
