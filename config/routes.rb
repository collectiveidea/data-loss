Dataloss::Application.routes.draw do
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match '/auth/failure', to: redirect('/'), via: [:get, :post]
  match '/push-the-button' => 'incidents#new', as: 'new_incident', via: [:get, :post]
  resources :incidents, only: :create
  get ':id' => 'incidents#show', as: 'incident'
  root :to => 'incidents#index'
end
