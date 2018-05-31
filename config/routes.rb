Rails.application.routes.draw do
  root to: 'phrases#index'
  post 'get_phrase', to: 'phrases#get_phrase'
  post 'clear', to: 'phrases#clear'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
