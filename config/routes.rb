Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'board#index', as: :index
  post '/', to: 'board#create'

  get '/test', to: 'application#test'
  get '/visualize', to: 'application#visualize'

  get '/api/board', to: 'api/board#index'
  post 'api/board', to: 'api/board#create'
  get '/api/board/:id', to: 'api/board#show'
  delete 'api/board/:id', to: 'api/board#destroy'

  post 'api/board/:id/comment', to: 'api/comment#index'
end
