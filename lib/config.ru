require 'sinatra'
 
$LOAD_PATH.unshift '.'
require 'espeak-http'
run Sinatra::Application
