Rails.application.routes.draw do
  devise_for :users, controller: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  root "articles#index"
  resources :articles
  get 'admins', to: 'admins#index'
end
