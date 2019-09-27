Rails.application.routes.draw do
  #routes compra
  get 'compra/index'
  get 'compra/new'
  post 'compra/create'
  get 'compra/:id/show', to: 'compra#show', as: 'compra_show'
  get 'compra/:id/edit', to: 'compra#edit', as: 'compra_edit'
  patch 'compra/:id/update', to: 'compra#update', as: 'compra_update'
  delete 'compra/:id/destroy', to: 'compra#destroy', as: 'compra_destroy'
  #repuesto_servicio routes
  get 'repuesto_servicio/index'
  get 'repuesto_servicio/new'
  post 'repuesto_servicio/create'
  get 'repuesto_servicio/:id/show', to: 'repuesto_servicio#show', as: 'repuesto_servicio_show'
  get 'repuesto_servicio/:id/edit', to: 'repuesto_servicio#edit', as: 'repuesto_servicio_edit'
  patch 'repuesto_servicio/:id/update', to: 'repuesto_servicio#update', as: 'repuesto_servicio_update'
  delete 'repuesto_servicio/:id/destroy', to: 'repuesto_servicio#destroy', as: 'repuesto_servicio_destroy'

  resources :tipo_facturas
  #vehiculo routes
  get 'vehiculo/index'
  get 'vehiculo/new'
  post 'vehiculo/create'
  get 'vehiculo/:cliente/new', to: 'vehiculo#new', as: 'vehiculo_new_add'
  get 'vehiculo/:id/edit', to: 'vehiculo#edit', as: 'vehiculo_edit'
  patch 'vehiculo/:id/update', to: 'vehiculo#update', as: 'vehiculo_update'
  delete 'vehiculo/:id/destroy', to: 'vehiculo#destroy', as: 'vehiculo_destroy'

  get '/vehiculo_suggestion', to: 'vehiculo_suggestion#index'
  #cliente routes
  get 'cliente/index'
  get 'cliente/new'
  post 'cliente/create'
  get 'cliente/:id/show', to: 'cliente#show', as: 'cliente_show'
  get 'cliente/:id/edit', to: 'cliente#edit', as: 'cliente_edit'
  patch 'cliente/:id/update', to: 'cliente#update', as: 'cliente_update'
  delete 'cliente/:id/destroy', to: 'cliente#destroy', as: 'cliente_destroy'
  #proveedores routes
  get 'proveedor/index'
  get 'proveedor/new'
  post 'proveedor/create'
  get 'proveedor/:id/edit', to: 'proveedor#edit', as: 'proveedor_edit'
  patch 'proveedor/:id/update', to: 'proveedor#update', as: 'proveedor_update'
  delete 'proveedor/:id/destroy', to: 'proveedor#destroy', as: 'proveedor_destroy'
  #search routes
  get "search/create"
  devise_for :users
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
