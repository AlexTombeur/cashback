Rails.application.routes.draw do

  # get 'corporations/new'

  # get 'corporations/edit'

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

  resources :corporations, only: [:new, :edit, :create, :update]

  resource :profile, only: [:show, :edit, :update], controller: "profile"

  resources :expenses do
    resources :messages, only: [:index, :new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  mount Attachinary::Engine => "/attachinary"

end
