Rails.application.routes.draw do
  devise_for :users
  root 'top#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :list, only: %i(new create edit update destroy) do
    resources :card, except: %i(index)
  end
end


