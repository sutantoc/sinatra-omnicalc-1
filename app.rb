require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:square)
end

get("/square/new") do
  erb (:square)
end

get("/square/results") do
  @number = params.fetch("number").to_i
  erb (:square_results)
end

get("/square_root/new") do
  erb(:square_root)
end

get("/square_root/results") do
  @user_number = params.fetch("user_number").to_i
  erb(:square_root_results)
end
