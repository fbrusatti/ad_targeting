AdTargeting::Application.routes.draw do
  root :to => 'keywords#index'

  resources :keywords do
    member do
      get :report
    end
  end

  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      get "/keyword/:id", controller: 'tracking', action: 'show', as: 'keyword'
      get "/keyword/:id/click", controller: 'tracking', action: 'click', as: 'click_keyword'
    end
  end
end
