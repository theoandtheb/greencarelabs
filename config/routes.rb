Rails.application.routes.draw do
  root :to => 'home#index'
  post "devices/accel" => "devices#accel"
  post "devices/fitbit" => "devices#fitbit"
end
