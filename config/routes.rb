Rails.application.routes.draw do
  #user側
  devise_for :users, :controllers => {:sessions => 'public/sessions',
    :registrations => 'public/registrations',
    :passwords => 'public/passwords'
  }
  root 'public/homes#top'
  get '/about' => 'public/homes#about'
  resources :users, only:[:show, :edit, :update] do
    collection do
      get 'quit'
      patch 'out'
    end
  end
  resources :restaurants, only:[:index, :show, :edit, :update]
  resources :courses, only:[:index, :show, :edit, :update, :destroy] do
    resources :books, only:[:new, :create, :index, :show] do
      collection do
        post 'confirm'
        get 'thanx'
      end
    end
  end
  resources :contacts, only:[:index] do
    collection do
      post 'confirm'
      get 'done'
    end
  end
  # admin側
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
