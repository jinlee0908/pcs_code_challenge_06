require 'sinatra'

before do
	@heading = 'Born Every Minute'
  @foot = 'Copyright &copy 2014 The Long Con LLC'
  @test_data = [{id:1, name:'Mrs. Theresa E. Stamm', email:'kieran@runte.biz', phone:'1-678-523-6736', twitter:'@Reinger'},
    {id:2, name:'Keara Maggio', email:'cayla@lubowitz.com',phone:'1-399-471-4388 x9581', twitter:'@Weber'}]
end

get '/' do 
	erb:index
end

post '/thanks' do
  @name = params[:name]
  erb:thanks
end

get '/suckers/:id' do 
  # @people = [@test_data.select {|person| person[:id] == params[:id]}] 
  id = params[:id].to_i - 1
  all_people = [
    {id:1, name:'Mrs. Theresa E. Stamm', email:'kieran@runte.biz', phone:'1-678-523-6736', twitter:'@Reinger'},
    {id:2, name:'Keara Maggio', email:'cayla@lubowitz.com',phone:'1-399-471-4388 x9581', twitter:'@Weber'}
  ]
  @people = [all_people[id]]
  # build a fake array of hashes
  # to use in the view,
  # but limit to just the row siginified by the :id 
end

# end

