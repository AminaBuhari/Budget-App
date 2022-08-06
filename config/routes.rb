Rails.application.routes.draw do
  devise_for :users, controllers: {home: "home", registrations: "registrations" }

  devise_scope :user do
    root "homes#index"
    resources :users, only:  [:index]
    resources :groups  do
      resources :transactions,  only:  [:index, :new, :create, :show, :destroy]
    end
  end
end