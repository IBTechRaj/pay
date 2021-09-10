Rails.application.routes.draw do
  get 'docs/index'
  get 'docs/new'
  get 'docs/create'
  get 'docs/destroy'
  get 'docs/edit'
  devise_for :users
  resources :docs, only: [:index, :new, :create, :destroy, :edit]
  root 'docs#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
