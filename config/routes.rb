Rails.application.routes.draw do  
  
  resources :projects do
    resources :pages do
      resources :components
    end
  end

  root 'projects#index'

end
