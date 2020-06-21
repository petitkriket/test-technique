# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :admin do
    resources :products
    resources :shops
    resources :taxons

    root to: redirect('/admin/shops')
  end
  resources :shops, param: :slug
  root to: 'shops#index'
end
