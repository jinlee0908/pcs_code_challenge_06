require 'sinatra'

get '/' do
  erb :index
end

post '/' do
  # get string params here
  erb :thanks
end

get '/thanks' do

end

get '/suckers' do

end

get '/suckers/:id' do
  # params[:id]

end

