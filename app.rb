require_relative 'config/environment'
require_relative 'models/pig_latinizer.rb'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        user_text = params[:user_phrase]
        # @pig_text = PigLatinizer.new(user_text).convert
        @pig_text = PigLatinizer.new.piglatinize(user_text)
        erb :pig_latinizer
    end
end