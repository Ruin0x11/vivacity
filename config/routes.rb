Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'weather_types#index', as: 'weather_types'
  match '/weathers/songs', :action => 'get_songs', :via => [:get], :controller => 'weather_types', as: 'get_songs'
end
