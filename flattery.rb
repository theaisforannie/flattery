require 'sinatra'
require 'yaml'
require 'slim'


# get '/hi' do
# 	YAML.load_file("compliments.yml").sample
# end

get '/' do
	slim :index
end

__END__

@@layout
doctype html
html
  head
    meta charset="utf-8"
    title Flatter Me 
    link rel="stylesheet" media="screen, projection" href="/styles.css"
    /[if lt IE 9]
      script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"
  body
    h1 YAML.load_file("compliments.yml").sample
    == yield

@@index
h2 you are beautiful
ul.tasks
  li YAML.load_file("compliments.yml").sample