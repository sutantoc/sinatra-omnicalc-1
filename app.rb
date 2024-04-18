require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:square)
end

get("/square/new") do
  erb (:square)
end


get("square/results") do
  erb (:square_results)
end
