Dataloss::Application.routes.draw do
  match '/auth/:provider/callback', to: 'sessions#create'
  match '/push-the-button' => 'incidents#new', as: 'new_incident'
  match ':id' => 'incidents#show', as: 'incident'
  root :to => 'incidents#index'
end
