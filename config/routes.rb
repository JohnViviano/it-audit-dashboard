Rails.application.routes.draw do
  devise_for :users
  resources :audits
  root "audits#index"
end
