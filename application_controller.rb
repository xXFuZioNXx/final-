require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  post '/click' do
   name_button=params[:car]
   puts name_button
    #choose_button(name_button)=["you can buy it here", "https://..."]
  @result= choose_button(name_button)[0]
  @image=choose_button(name_button)[1]
  @number=chooee_buuton(name_button)[2]
  erb :results
  end
end
