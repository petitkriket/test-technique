Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: redirect('/shops')

  resources :shops, only: [:index, :show]

  namespace :admin do
    resources :products
    resources :shops

    root to: redirect('/admin/shops')
  end
end
