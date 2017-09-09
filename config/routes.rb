Rails.application.routes.draw do
  get "recipe/search" => "recipe#search"
  get "recipe/show" => "recipe#show"
  root "static_pages#home"
end
