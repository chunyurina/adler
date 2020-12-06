Rails.application.routes.draw do
  devise_for :users

  resources :messages, only: [:index, :create, :new] do
    collection do
      get 'article', to: 'messages#article'
    end
  end
  
  resources :mypages, only: [:new, :show]

  root "messages#index"
end
