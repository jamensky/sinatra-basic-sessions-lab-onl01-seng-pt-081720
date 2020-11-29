require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, 'random'
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    @session = params[:]
    binding.pry

    erb :checkout
  end

end
