Rails.application.routes.draw do
  root'users#index'
  # resources :users

# direct :homepage do
#   "http://www.rubyonrails.org"
# end

#   direct :main do
#     { controller: 'users', action: 'index', subdomain: 'www' }
#   end

# resource :user
 
# resolve("User") { [:user] }

ActiveSupport::Inflector.inflections do |inflect|
  inflect.irregular 'tooth', 'teeth'
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
