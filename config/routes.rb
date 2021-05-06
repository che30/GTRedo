Rails.application.routes.draw do
  devise_for :users,controllers: { registrations: 'registrations' }
  devise_scope :user do
    root to: 'home#homepage'
  end
  get '/externaltransactions', to: 'externaltransactions#external'
  get '/externaltransactions/:id', to: 'externaltransactions#show'
  get '/home', to: 'home#homepage'

  resources :users,only: [:edit, :update, :show, :destory,:create]
  resources :transactions,only: [:new,:show,:index,:create]
  resources :groups, only: [:new,:show, :index,:create]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
