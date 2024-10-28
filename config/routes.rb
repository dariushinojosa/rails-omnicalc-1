Rails.application.routes.draw do

  get("/", { :controller => "calculator", :action => "new_square"})

  get("/square/new", { :controller => "calculator", :action => "new_square"})

  get("/square_root/new", { :controller => "calculator", :action => "new_root"})

  get("/random/new", { :controller => "calculator", :action => "new_random"})

  get("/payment/new", { :controller => "calculator", :action => "new_payment"})

  get("/square/results", { :controller => "calculator", :action => "results_square"})

  get("/square_root/results", { :controller => "calculator", :action => "results_root"})

  get("/random/results", { :controller => "calculator", :action => "results_random"})

  get("/payment/results", { :controller => "calculator", :action => "results_payment"})








  
end
