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
