Rails.application.routes.draw do

  root "article#message"

  resources :article


end
