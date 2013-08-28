Ballot::Application.routes.draw do
  root to: 'welcome#index'

  get '/auth/:provider/callback', to: 'sessions#create'

  # omniauth path
  get '/signout' => 'sessions#destroy', as: :signout
  get '/signin' => 'sessions#new', as: :signin


end
