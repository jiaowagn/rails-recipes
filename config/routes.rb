Rails.application.routes.draw do

  devise_for :users

  resources :events

  namespace :admin do
    root "events#index"
    resources :versions do
      post :undo
    end

    resources :events do
      resources :tickets, :controller => "event_tickets"
    end
    resources :users do
      resource :profile, :controller => "user_profiles"
    end
  end

  get '/faq' => 'pages#faq'

  resource :user

  root "events#index"

end
