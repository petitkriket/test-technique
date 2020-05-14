Rails.application.routes.draw do
  root to: redirect('/shops')

  resources :shops, only: [:index, :show]

  namespace :admin do
    resources :products
    resources :shops
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
end
