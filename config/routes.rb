Rails.application.routes.draw do
  resources :players, defaults: { format: "json" }

  post "/" => "players#create"
end
