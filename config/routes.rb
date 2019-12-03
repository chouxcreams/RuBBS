Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'board#index', as: :index
  post '/', to: 'board#create'
  get '/:id', to: 'board#show', as: :show
  delete '/:id', to: 'board#destroy', as: :destroy
  put '/:id', to: 'board#comment', as: :comment

  get 'comment/:id', to: 'comment#show', as: :comment_show
  delete '/comment/:id', to: 'comment#destroy', as: :comment_destroy
  put 'comment/:id', to: 'comment#reply', as: :comment_reply

  get '/test', to: 'application#test'
  get '/visualize', to: 'application#visualize'

  get '/api/board', to: 'api/board#index'
  post 'api/board', to: 'api/board#create'
  get '/api/board/:id', to: 'api/board#show'
  delete 'api/board/:id', to: 'api/board#destroy'

  post 'api/board/:id/comment', to: 'api/comment#index'
end
