Rails.application.routes.draw do
  root 'financing_tables#index'

  resources :financing_tables, except: [ :show ]
end
