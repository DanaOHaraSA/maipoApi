Rails.application.routes.draw do
  resources :solicituds
  resources :implementos
  resources :salas
  resources :locals
  resources :usuario_as
  resources :usuario_ms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
