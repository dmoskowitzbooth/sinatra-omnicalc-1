require "sinatra"
require "sinatra/reloader"
require "active_support/all"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/square/new") do

  erb(:square)
end

get ("/square/results") do
  @the_num=params.fetch("users_number")
  @the_result=params.fetch("users_number").to_f*params.fetch("users_number").to_f
  erb(:square_results)
end

get("/square_root/new") do

  erb(:square_root)
end

get ("/square_root/results") do
  @the_num=params.fetch("users_number")
  @the_result=params.fetch("users_number").to_f**0.5
  erb(:square_root_results)
end

get("/random/new") do

  erb(:random)
end

get ("/random/results") do
  @mini=params.fetch("users_min").to_f
  @maxi=params.fetch("users_max").to_f
  @results=rand(@mini..@maxi)
  erb(:random_results)
end

get("/payment/new") do

  erb(:payment)
end

get ("/payment/results") do
  @apr=params.fetch("users_apr").to_fs(:percentage, {:precision => 4})
  @yrs=params.fetch("users_years").to_f
  @prin=params.fetch("users_pv").to_fs(:currency)
  @results=params.fetch("users_pv").to_fs(:currency)
  erb(:payment_results)
end
