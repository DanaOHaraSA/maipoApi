Rails.application.routes.draw do
  resources :solicituds
  resources :implementos
  resources :salas
  resources :locals
  resources :usuario_as
  resources :usuario_ms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'usuario_as/autenticacion', to: 'usuario_as#autenticacion'
  get 'salas/salasbylocal/:local_id', to: 'salas#salasbylocal'

end
