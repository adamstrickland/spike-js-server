require 'sinatra/base'
require 'json'
require 'uuid'

class SpikeJS < Sinatra::Base
	get '/' do
	    # erb :index
	    send_file File.join(settings.public_folder, 'index.html')
	end

	# get '/message's do
	#     content_type :json
	# end

	# post '/messages' do
	#     content_type :json
	#     m = JSON.parse(params[model]).merge(:id => UUID.new)
	# end

	run! if app_file == $0
end