require_relative 'config/environment'

class App < Sinatra::Base

    get '/new' do
        erb :create_puppy
    end
    
    #method should be last -if others exist
    get '/' do
        erb :index
    end

    post '/puppy' do
        @puppy = params
        erb :display_puppy
    end

end
