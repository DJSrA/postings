Rails.application.routes.draw do
  devise_for :users
  devise_for :candidates
  resources :postings
  resources :companies

  devise_for :recruiters

  devise_scope :recruiter do
    authenticated :recruiter do
      root 'companies#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  root to: 'postings#index'
end
