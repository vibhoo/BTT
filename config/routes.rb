Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root 'books#index'
  resources :books
  get '/issue_book/:id' => "books#issue_book", as: :issue_book
  get "/return_book/:id" => "books#return_book", as: :return_book
end
