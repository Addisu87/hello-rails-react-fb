Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :greetings, only: [:index]
    end
  end
  root 'home#index'
  get '/*path' => 'home#index'
end
