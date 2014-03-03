require 'sinatra'

before do
	@heading = 'Born Every Minute'
  @foot = 'Copyright &copy 2014 The Long Con LLC'
end

get '/' do 
	erb:homepage
end

post '/thanks' do
  @name = params[:name]
  # get the name out of submitted form params, then
  # set it in a way that it is 'visible' to the template
  erb:thanks
end

get '/suckers' do
  @show_listings_link = false
  @people = [
    {id:1, name:'Mrs. Theresa E. Stamm', email:'kieran@runte.biz' },
    {id:2, name:'Keara Maggio', email:'cayla@lubowitz.com'}
  ]
  # build a fake array of hashes
  # to use in the view
  erb:suckers
end

get '/suckers/:id' do
  id = params[:id].to_i - 1
  @show_listings_link = true
  all_people = [
    {id:1, name:'Mrs. Theresa E. Stamm', email:'kieran@runte.biz', phone:'1-678-523-6736', twitter:'@Reinger'},
    {id:2, name:'Keara Maggio', email:'cayla@lubowitz.com',phone:'1-399-471-4388 x9581', twitter:'@Weber'}
  ]
  @people = [all_people[id]]
  # build a fake array of hashes
  # to use in the view,
  # but limit to just the row siginified by the :id 
  erb:suckers
end

# end

