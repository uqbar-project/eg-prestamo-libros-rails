Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/prestamos", to: "prestamos#list"
  patch "/prestamos/:prestamo_id", to: "prestamos#devolver"
end
