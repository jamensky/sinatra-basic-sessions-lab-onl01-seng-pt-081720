require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, 'random'
  end

  get '/' do
    erb :index
  end

  post '/checkout'
    erb :checkout
  end 

end
  