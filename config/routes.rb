Rails.application.routes.draw do

 jsonapi_resources :jobs
 jsonapi_resources :laser_guns
 jsonapi_resources :locations
 jsonapi_resources :planets
 jsonapi_resources :power_armors
 jsonapi_resources :robots
 jsonapi_resources :robot_models
 jsonapi_resources :spaceships
 jsonapi_resources :spaceship_models
end
