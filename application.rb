require 'sinatra/base'
require 'sinatra/cross_origin'
require 'json'
require 'uuid'
require 'faker'

class SpikeJSServer < Sinatra::Base
	# register Sinatra::CrossOrigin

	# enable cross_origin
	# configure do
	# 	set :allow_origin, :any
	# 	set :allow_methods, :any
	# 	set :allow_credentials, true
	# end

	get '/' do
		uuid = UUID.new
		status 201
		headers "Access-Control-Allow-Origin" => "*"
		(0..20).map do |i|
			{
				id:uuid.generate,
				text: Faker::Lorem.sentence(Random.rand(12))
			}
		end.to_json
	end

	run! if app_file == $0
end