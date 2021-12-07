Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index' #-> list des tasks
   get  "tasks/new", to: "tasks#new"
  post 'tasks', to: 'tasks#create'
  get 'tasks/:id', to: 'tasks#show', as: :task #=> selectionne un seul record
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task #=> affiche le formulaire et submit
  patch 'tasks/:id', to: 'tasks#update' #=> modification record existant
  delete 'tasks/:id', to: 'tasks#destroy' #=> suppression record existant
end
