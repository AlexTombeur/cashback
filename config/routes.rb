Rails.application.routes.draw do
  namespace :subordinates do
    get 'expenses/index'
  end

  namespace :subordinates do
    get 'expenses/show'
  end

  # get 'subordinates/index'

  # get 'subordinates/show'

  root to: 'pages#home'

  devise_for :users, :controllers => { :invitations => 'users/invitations' }

  resources :corporations, only: [:new, :edit, :create, :update]

  resource :profile, only: [:show, :edit, :update], controller: "profile"

  resources :expenses do
    resources :messages, only: [:index, :new, :create]
  end

  namespace :subordinates do
    resources :expenses, only: [:index, :show] do
      member do
        patch :accept
        patch :reject
      end

      resources :messages, only: [:create]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  mount Attachinary::Engine => "/attachinary"

end
