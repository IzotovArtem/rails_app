Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root "packages#new"
  resources :packages
  #get "/packages/:id", to: "packages#show"
end
