# sample/sample_app.rb
require 'sinatra'
require 'pry'


# We us "classic" mode where you don't actually see the class
# inheriting from Sinatra::Base and you don't start the app with
# rackup. This makes the object structure less obvious but lets
# Sinatra do more of the behind-the-scenes

get '/' do
  "Hello, World!"
end

post '/' do
   "Caught a post" 
end


# get'/*/' the splat will allow for dynamic insert of data to the page

# to chose whether first or last name needs to be entered you can do the following
#get '/user/:first/?:last?' do

#redirect example
#get '/sinatra' do
#redirect 'http://sinatrarb.com'

#to make a redirect permenant verses temp (review curl status first)  but then
# redirect 'http://sinatrarb.com', 301 rather than 302

#how to view a static file

# to direct the views - just write out the names

#important: to pass in template files you would do the following:
#get '/name of file without extention' do
# erb: name of file without extention
#end

#how to apply variables to the template form example
# @ variable name = something
# @ a players's decision  = silent

# then in template go add information here: <%= variable %>

#filters for partials
# before do 
# @ heading = "heading name"

# in HTML: <h1> <%= @headinng %> </h1>


#config do
# enable :sessions
# end

# get '/set' do
# 	session[:now] = Time.now
# 	"Current session value is #{session}"
# end


#get '/fetch' do
# "Session value is  #{session[:now]} and the current time is #{Time.now}."
# end

#get '/clear' do - this will delete the session
# session.clear
# redirect '/fetch' - to call another session


# this is really the important bit - how to get user input into the data: 

# before do
# 	@heading = "Prisoner's Dilemma"
# 	@decision = ['silent', 'betray']
# end

# get '/decision/:type' do
# 	@a_decision = params[:type].to_s
#	@b_decision = params[:type].to_s

# before end input the erb:decision
# end

