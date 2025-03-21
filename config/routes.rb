Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"
  resources :main_tasks, only: [:new] do
    resources :sub_tasks, only: :create
  end
end
