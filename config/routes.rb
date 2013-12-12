Supermandag::Application.routes.draw do
  root to: 'poll#index'

  resources :movies, except: [:index, :show, :delete] do
    resources :votes, only: :create
  end

  get 'auth/google_oauth2', as: 'oauth'

  get '/auth/google_oauth2/callback/', to: 'sessions#omniauth_create', as: 'oauth_callback'

  get '/logout', to: 'sessions#destroy', as: 'logout'

end
