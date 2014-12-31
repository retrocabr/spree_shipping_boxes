Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :shipping_boxes
  end
end
