Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"
  resources :posts do
    collection do
      get  :new_task
      post :save_task
      get  :stopwatch
      post :save_time
    end
  end
  resources :users, only: [:show]
end