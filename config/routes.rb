Rails.application.routes.draw do
  root "artigos#index"
  get "/artigos", to: "artigos#index"
  get "/artigos/:id", to: "artigos#show"
end
