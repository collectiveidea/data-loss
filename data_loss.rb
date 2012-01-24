require "bundler/setup"
require "sinatra/base"

class DataLoss < Sinatra::Base
  get "/" do
    @days = ENV['DAYS'] || 0
    erb :index
  end
end