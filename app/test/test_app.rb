# app/test/test_app.rb

require_relative 'test_helper.rb'

class AppTest < MiniTest::Unit::TestCase

  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_get_index_page
    get '/'
    assert last_response.ok?
  end

  def test_post_index_page
    post '/'
    assert last_response.ok?
    assert_equal params.length = 4
  end

  def test_thanks_page
    get '/thanks'
    assert last_response.ok?
  end

  def test_suckers_admin_page
    get '/suckers'
    assert last_response.ok?
  end

  def test_one_sucker_admin_page
    get '/suckers/:id'
    assert last_response.ok?
  end

end