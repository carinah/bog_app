BogApp::Application.routes.draw do
  
  get "/creatures", to: "creatures#index" 
  
  get "/creatures/new", to: "creatures#new"
  
  get "/creatures/:id", to: "creatures#show"

  get "/creatures/:id/edit", to: "creatures#edit"

  post "/creatures/:id", to: "creatures#create" 

  put "/creatures/:id", to: "creatures#update"

  get "/creatures/:id/delete", to: "creatures#delete"

  delete "/creatures/:id", to: "creatures#destroy"

end

# Preguntas 

# reason why create route is below edit route? 
# how to update without creating a new entry 
