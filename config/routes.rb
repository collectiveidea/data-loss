Dataloss::Application.routes.draw do
  match '/auth/:provider/callback', to: 'sessions#create'
  match '/auth/failure', to: redirect('/')
  match '/push-the-button' => 'incidents#new', as: 'new_incident'
  resources :incidents, only: :create
  match ':id' => 'incidents#show', as: 'incident'
  root :to => 'incidents#index'
end
