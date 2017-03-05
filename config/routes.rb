Rails.application.routes.draw do
  root :to => 'home#index'
  post "devices/accel" => "devices#accel"
  post "devices/fitbit" => "devices#fitbit"
  get "devices/heyfromfitbit" => "devices#heyfromfitbit"
  get "fitbit_auth" => "devices#authedbyfitbit"
  get "home/fitter" => "home#fitter"
end
