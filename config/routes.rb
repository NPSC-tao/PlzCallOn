Rails.application.routes.draw do
  get '/' => 'home#top'
  ActiveAdmin.routes(self)
  devise_for :users, controllers: {
        sessions: 'users/sessions'
  }
  namespace :api, {format: 'json'} do
    namespace :v1 do
      resources :users, only: [:index, :show, :update]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
