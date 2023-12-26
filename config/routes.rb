Rails.application.routes.draw do

  root "article#message"

  resources :article , only: [:index, :show , :new ,:create]

end
