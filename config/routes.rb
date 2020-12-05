Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :messages, only: [:index, :create, :new, :edit, :update] do
    collection do
      get 'article', to: 'messages#article'
      get 'edit', to: 'messages#edit'
    end
  end
  
  resources :mypages, only: [:new, :show]

  root "messages#index"
end
