BogApp::Application.routes.draw do
  
  get "/creatures", to: "creatures#index" 
  get "/creatures/new", to: "creatures#new"
  post "/creatures", to: "creatures#create" 
  get "/creatures/:id", to: "creatures#show"
end
