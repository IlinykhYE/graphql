Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"
  scope module: 'api' do
    namespace :v1 do
      resources :jobs

      resources :companies do
        match 'mark_deleted', to: 'companies/mark_deleted', via: :put
        resources :jobs
      end

      resources :applies

      resources :geeks do
        resources :applies
      end

      match "*path", to: "application#catch_404", via: :all
    end
  end
  resources :resorts, :only => [:index, :show]    # REST-запросы-

  post '/graphql', to: 'graphql#execute'   # Graphql POST запросы-
  get '/graphql', to: 'graphql#execute'
end
