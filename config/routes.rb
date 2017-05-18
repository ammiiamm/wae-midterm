Rails.application.routes.draw do
  resources :course_offerings
  devise_for :users
  get 'site/index'
  root to: 'course_offerings#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
