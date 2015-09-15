Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :postings
  resources :companies

  devise_for :users

  devise_scope :user do
    authenticated :user do
      root 'postings#index', as: :authenticated_root
      get "recruiters" => "recruiters#index"
      get "recruiters(.:format)" => "recruiters#show"
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  devise_scope :user do
    get "/recruiters/sign_up" => "recruiters/registrations#new"
    post "/recruiters/sign_up" => "recruiters/registrations#create"
  end

  root to: 'postings#index'
end
