require "bundler/setup"
require "sinatra/base"

class DataLoss < Sinatra::Base
  get "/" do
    date = begin 
      Date.parse(ENV['DATE'])
    rescue
      Date.today
    end

    @days = (date...Date.today).to_a.size
    erb :index
  end

  get "/bkeepers" do
    date = begin 
      Date.parse(ENV['DATE_BKEEPERS'])
    rescue
      Date.today
    end

    @days = (date...Date.today).to_a.size
    erb :index
  end
end