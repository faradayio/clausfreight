Clausfreight::Application.routes.draw do
  resources :presents
  root :to => "presents#new"
end
