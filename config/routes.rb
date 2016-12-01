Rails.application.routes.draw do
  resources :add_details_to_salas
  resources :solicituds
  resources :implementos
  resources :salas
  resources :locals
  resources :usuario_as
  resources :usuario_ms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'usuario_as/encuentra', to: 'usuario_as#encuentra'
  post 'usuario_ms/encuentra', to: 'usuario_ms#encuentra'
  get 'salas/salasbylocal/:local_id', to: 'salas#salasbylocal'
  get 'implementos/implementosbylocal/:local_id', to: 'implementos#implementosbylocal'
  get 'locals/localsbyarrendador/:usuario_a_id', to: 'locals#localsbyarrendador'
  get 'solicituds/solicitudbymusico/:usuario_m_id', to: 'solicituds#solicitudbymusico'
  get 'solicituds/solicitudbysala/:sala_id', to: 'solicituds#solicitudbysala'
  get 'locals/arrendadorbysala/:id', to: 'locals#arrendadorbysala'
  #get 'salas/borarsalasbylocal/local_id', to: 'salas#borarsalasbylocal'
  #delete 'implementos/borarimplementosbylocal/local_id', to: 'implementos#borarimplementosbylocal'
  get 'solicituds/solicitudesporidlocal/:local_id', to: 'solicituds#solicitudesporidlocal'
  get 'salas/solicitdesporidarrendador/:usuario_a_id/:estado', to: 'salas#solicitdesporidarrendador'

end
