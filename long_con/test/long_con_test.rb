require './long_con_test_helper.rb'

class MyTest < MiniTest::Unit::TestCase

  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_long_con
    get '/'
    assert last_response.ok?
    assert_equal "Hello, World!", last_response.body

    get '/thanks'
    assert last_response.ok?
    assert_equal "Thanks!", last_response.body

    get '/suckers'
    assert last_response.ok?
    assert_equal "Suckers!", last_response.body

    get '/suckers/:id'
    assert last_response.ok?
    assert_equal "Suckers id", las_response.body
  end

  def test_post
    post '/'
    assert last_response.ok?
    assert_equal "Caught a post", last_response.body
  end

  def redirect
  end
end