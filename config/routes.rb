Rails.application.routes.draw do
  devise_for :users do
    authenticated :user do
      root to: 'home#index', as: :authenticated_root
    end

    unauthenticated :user do
      root to: 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  namespace :private do
  end

  root to: redirect('/users/sign_in')
end
