Rails.application.routes.draw do
  resources :players, defaults: { format: "json" }

  post "/" => "players#create"

  get "/:name" => "players#show", defaults: { format: "json" }
  delete "/:name" => "players#destroy", defaults: { format: "json" }
end
