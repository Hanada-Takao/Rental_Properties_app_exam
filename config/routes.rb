Rails.application.routes.draw do
  resources :propertis do
    collection do
      post :confirm
    end
  end
end
