Supermandag::Application.routes.draw do
  root to: 'poll#index'

  resources :movies, only: [:new, :create] do
    resources :votes, only: :create
  end

  get 'login', to: 'poll#login', as: 'login'
  post 'login', to: 'poll#new_session', as: 'create_session'
end
