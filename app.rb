require 'sinatra'
require 'artii'

if settings.development?
  require 'sinatra/reloader'
end

get '/' do
  a = Artii::Base.new :font => 'graffiti'
  instance_number = ENV['HOSTNAME'].split(".").first.split("-").last

  erb :index, locals: {
    instance_number_ascii: a.asciify(instance_number),
    meta_refresh_seconds: params[:refresh]
  }
end

get '/__health' do
  "ok"
end
