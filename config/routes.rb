Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'professors#index'

  #professors
  get '/professors', to: 'professors#index'

  #professor_students
  get '/professors/:id', to: 'professors#show'
end
