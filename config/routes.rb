Rails.application.routes.draw do

  root "application#index"

  resources :article , only: [:index, :show , :new ,:create]

end
