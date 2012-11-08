Dataloss::Application.routes.draw do
  match '/auth/:provider/callback', to: 'sessions#create'
  match ':id' => 'incidents#show'
  root :to => 'incidents#index'
end
