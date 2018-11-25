require './environment'
require_relative 'app/models/pirate.rb'
require_relative 'app/models/ship.rb'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    
    get '/' do
      erb :index
    end
    
    get '/new' do 
      erb :"pirates/new"
    end 
    
    post '/pirates' do
      @pirate = Pirate.new(params[:student])
 
  params[:student][:courses].each do |details|
    Course.new(details)
  end
 
  @courses = Course.all
 
  erb :student
      erb :"pirates/show"
    end 

  end
end
