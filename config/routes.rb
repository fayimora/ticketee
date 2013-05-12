Ticketee::Application.routes.draw do
  devise_for :users

  get "tickets/new"

  root :to => 'projects#index'
  resources :projects do
    resources :tickets
  end
end
