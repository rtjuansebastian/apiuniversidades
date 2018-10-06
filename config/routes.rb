Rails.application.routes.draw do
  resources :programas
  resources :sedes
  resources :universidads
  resources :nucleos_basicos_conocimientos
  resources :ciudads
  resources :caracters
  resources :nivels
  resources :jornadas
  resources :modalidads
  resources :areas_conocimientos
  resources :departamentos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
