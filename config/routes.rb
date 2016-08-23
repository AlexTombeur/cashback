Rails.application.routes.draw do

  # get 'messages/index'

  # get 'messages/new'

  # get 'messages/create'

  # get 'expenses/index'

  # get 'expenses/new'

  # get 'expenses/show'

  # get 'expenses/create'

  # get 'expenses/edit'

  # get 'expenses/update'

  # get 'expenses/destroy'

  # get 'profiles/show'

  # get 'profiles/edit'

  # get 'profiles/update'

  root to: 'pages#home'
  devise_for :users

  resource :profile, only: [:show, :edit, :update]

  resources :expenses do
    resources :messages, only: [:index, :new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
