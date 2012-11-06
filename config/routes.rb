Dataloss::Application.routes.draw do
  match ':id' => 'users#show'
  root :to => 'users#index'
end
