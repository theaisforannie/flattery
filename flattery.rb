require 'sinatra'
require 'yaml'

get '/hi' do
	YAML.load_file("compliments.yml").sample
end
