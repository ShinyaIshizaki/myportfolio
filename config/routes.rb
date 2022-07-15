Rails.application.routes.draw do
  root to: 'home#index'
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'users/index' => 'users#index'
  get 'salon/index' => 'salon#index'
  get 'salon/new' => 'salon#new'
  get 'salon/confirm' => 'salon#confirm'
  post 'salon/thankyou' => 'salon#create'
  resources :users, :salon, only: [:new, :create, :show] do
    collection do
      post :confirm
    end
  end
  resources :contacts, only: [:new, :create]
  post 'contacts/confirm', to: 'contacts#confirm', as: 'confirm'
  post 'contacts/back', to: 'contacts#back', as: 'back'
  get 'done', to: 'contacts#done', as: 'done'
end
