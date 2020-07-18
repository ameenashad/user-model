Rails.application.routes.draw do
  mount GrapeSwaggerRails::Engine => '/swagger'
  mount API::V1::Base, at: "/"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
