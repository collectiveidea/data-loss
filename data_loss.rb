require "bundler/setup"
require "sinatra/base"

class DataLoss < Sinatra::Base
  ROOT_HANDLER = proc {
    date = begin 
      Date.parse(ENV['DATE'])
    rescue
      Date.today
    end

    @days = (date...Date.today).to_a.size
    erb :index
  }

  get "/", &ROOT_HANDLER
  get "/collectiveidea", &ROOT_HANDLER

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