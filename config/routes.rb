Rails.application.routes.draw do
  # Routes for the City resource:
  # CREATE
  get "/cities/new", :controller => "cities", :action => "new"
  post "/create_city", :controller => "cities", :action => "create"

  # READ
  get "/cities", :controller => "cities", :action => "index"
  get "/cities/:id", :controller => "cities", :action => "show"

  # UPDATE
  get "/cities/:id/edit", :controller => "cities", :action => "edit"
  post "/update_city/:id", :controller => "cities", :action => "update"

  # DELETE
  get "/delete_city/:id", :controller => "cities", :action => "destroy"
  #------------------------------

  # Routes for the Traveler resource:
  # CREATE
  get "/travelers/new", :controller => "travelers", :action => "new"
  post "/create_traveler", :controller => "travelers", :action => "create"

  # READ
  get "/travelers", :controller => "travelers", :action => "index"
  get "/travelers/:id", :controller => "travelers", :action => "show"

  # UPDATE
  get "/travelers/:id/edit", :controller => "travelers", :action => "edit"
  post "/update_traveler/:id", :controller => "travelers", :action => "update"

  # DELETE
  get "/delete_traveler/:id", :controller => "travelers", :action => "destroy"
  #------------------------------

  # Routes for the Shipment resource:
  # CREATE
  get "/shipments/new", :controller => "shipments", :action => "new"
  post "/create_shipment", :controller => "shipments", :action => "create"

  # READ
  get "/shipments", :controller => "shipments", :action => "index"
  get "/shipments/:id", :controller => "shipments", :action => "show"

  # UPDATE
  get "/shipments/:id/edit", :controller => "shipments", :action => "edit"
  post "/update_shipment/:id", :controller => "shipments", :action => "update"

  # DELETE
  get "/delete_shipment/:id", :controller => "shipments", :action => "destroy"
  #------------------------------

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "shipments#index"

end
