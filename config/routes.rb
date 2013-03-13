Ticketee::Application.routes.draw do
  get "tickets/new"

  root :to => 'projects#index'
  resources :projects do
    resources :tickets
  end
end
