Rails.application.routes.draw do
  root 'financing_tables#index'

  resources :financing_tables, except: [ :show ]
  get '/financing_tables/simulation', to: 'financing_tables#simulation', as: 'simulation_financing_tables'
end
