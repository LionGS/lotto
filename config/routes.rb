Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "drawing_lots#home"
  get "/home" => "drawing_lots#home"
end
