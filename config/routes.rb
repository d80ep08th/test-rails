Rails.application.routes.draw do
  #GET /ping
  get "ping", to: "resurface#index"

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  post "/graphql", to: "graphql#execute"



  root 'library#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
