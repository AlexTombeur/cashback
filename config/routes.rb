Rails.application.routes.draw do
  # get 'profiles/show'

  # get 'profiles/edit'

  # get 'profiles/update'

  root to: 'pages#home'
  devise_for :users

  resource :profile, only: [:show, :edit, :update]

  resources :expenses do
    resources :messages, only: [:index, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
