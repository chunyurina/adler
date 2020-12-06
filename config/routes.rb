Rails.application.routes.draw do
  devise_for :users

  resources :messages, only: [:index, :create, :new, :edit, :update] do
    collection do
      get 'article', to: 'messages#article'
      get 'edit', to: 'messages#edit'
    end
  end
  
  resources :mypages, only: [:new, :show]

  root "messages#index"
end
