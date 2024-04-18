require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:square)
end

get("/square/new") do
  erb (:square)
end

get("/square/results") do
  @number = params.fetch("number").to_f
  erb (:square_results)
end

get("/square_root/new") do
  erb(:square_root)
end

get("/square_root/results") do
  @user_number = params.fetch("user_number").to_f
  erb(:square_root_results)
end

get("/payment/new") do
  erb(:payment)
end

get("/payment/results") do
  @user_APR = params.fetch("user_APR").to_f
  @user_years = params.fetch("user_years").to_i
  @user_pv = params.fetch("user_pv").to_f

  @r = @user_APR / 1200
  @numerator = @r * @user_pv
  @neg_periods = @user_years * -12
  @r_plus1 = @r + 1
  @power_n = @r_plus1 ** @neg_periods
  @denominator = 1 - @power_n
  @payment = @numerator / @denominator
  erb(:payment_results)
end

get("/random/new") do
  erb(:random)
end

get ("/random/results") do
  @user_min = params.fetch("user_min").to_f
  @user_max = params.fetch("user_max").to_f
  @random = rand(@user_min..@user_max)
  erb(:random_results)
end
