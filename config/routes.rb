Rails.application.routes.draw do
  get 'observation_sets_controller/new'

  get 'patients/index'

  get 'patients/show'

  mount Upmin::Engine => '/admin'
  devise_scope :user do
    root to: 'patients#index'
  end

  resources :charts

  devise_for :users
  resources :users
  resources :patients do
    resources :observation_sets
  end
  resources :observation_sets
  resources :alerts, only: [:index, :show]
end
