Rails.application.routes.draw do
  post 'sessions/login'
  get 'sessions/login'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users do
    
  end

end
