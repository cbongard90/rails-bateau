Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :subjects do
    resources :chapters, except: %i[destroy edit update] do
      resources :materials, except: %i[destroy edit update]
    end
  end
  resources :chapters, only: %i[destroy edit update]
  resources :materials, only: %i[destroy edit update]

  resources :chatrooms, only: %i[index show] do
    resources :messages, only: :create
  end

  resources :schedules
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
