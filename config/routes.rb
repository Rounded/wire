Rails.application.routes.draw do  
  resources :pages do
    resources :components
  end

  root 'pages#index'

end
