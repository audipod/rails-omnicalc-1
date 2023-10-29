Rails.application.routes.draw do
  get("/", { :controller => "zebra", :action => "square" })
  get("/square/new", { :controller => "zebra", :action => "square" })
  get("/square_root/new", { :controller => "zebra", :action => "root" })
  get("/payment/new", { :controller => "zebra", :action => "payment" })
  get("/random/new", { :controller => "zebra", :action => "random" })
  get("/square/results", { :controller => "zebra", :action => "square_results" })
  get("/square_root/results", { :controller => "zebra", :action => "root_results" })
  get("/payment/results", { :controller => "zebra", :action => "payment_results" })
  get("/random/results", { :controller => "zebra", :action => "random_results" })
end
