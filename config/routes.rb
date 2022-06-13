Rails.application.routes.draw do
  root "artigos#index"

  resources :artigos
end
