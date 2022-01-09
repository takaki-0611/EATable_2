Rails.application.routes.draw do
  namespace :public do
    get 'contacts/index'
    get 'contacts/confirm'
    get 'contacts/done'
  end
  namespace :public do
    get 'restaurants/index'
    get 'restaurants/show'
    get 'restaurants/edit'
    get 'restaurants/update'
  end
  namespace :public do
    get 'courses/edit'
    get 'courses/create'
    get 'courses/update'
    get 'courses/destroy'
  end
  namespace :public do
    get 'books/new'
    get 'books/confirm'
    get 'books/create'
    get 'books/thanx'
    get 'books/index'
    get 'books/show'
  end
  namespace :public do
    get 'homes/top'
    get 'homes/about'
  end
  namespace :public do
    get 'users/show'
    get 'users/edit'
    get 'users/update'
    get 'users/quit'
    get 'users/out'
  end
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
