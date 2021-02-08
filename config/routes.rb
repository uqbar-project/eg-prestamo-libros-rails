Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/prestamos", to: "prestamos#list"
  patch "/prestamos", to: "prestamos#devolver"
  post "/prestamos", to: "prestamos#prestar"
  get '/libros/:valor_a_buscar', to: "libros#list"
  get '/personas', to: "personas#list"
end
