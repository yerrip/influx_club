Rails.application.routes.draw do


resources :categories do
  resources :listings
end


root "categories#index"

end
