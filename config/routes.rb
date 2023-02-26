Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'users/get_user/:phone_no'                                                =>  'user#get_user'
  post 'users/create'                                          => 'user#create_user'

end
