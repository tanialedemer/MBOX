Rails.application.routes.draw do
  resources :tipo_facturas
  #vehiculo routes
  get 'vehiculo/index'
  get 'vehiculo/new'
  post 'vehiculo/create'
  get 'vehiculo/:cliente/new', to: 'vehiculo#new', as: 'vehiculo_new_add'
  get 'vehiculo/:id/edit', to: 'vehiculo#edit', as: 'vehiculo_edit'
  patch 'vehiculo/:id/update', to: 'vehiculo#update', as: 'vehiculo_update'
  delete 'vehiculo/:id/destroy', to: 'vehiculo#destroy', as: 'vehiculo_destroy'
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
