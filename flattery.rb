require 'sinatra'
require 'yaml'

get '/' do
	YAML.load_file("compliments.yml").sample
end
