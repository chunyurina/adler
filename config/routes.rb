Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :messages, only: [:index, :create, :new] do
    collection do
      get 'article', to: 'messages#article'
    end
  end
  
  root "messages#index"
end
