Rails.application.routes.draw do
  root "artigos#index"
  resources :artigos do
    get '/page/:page', action: :index, on: :collection
  end
end
