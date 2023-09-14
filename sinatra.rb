require 'sinatra'

get '/' do
  system("~/teleport-server-access.sh '#{request.env['HTTP_ACCESS']}' '#{request.env['HTTP_TELEPORT_REQUEST_ID']}' '#{request.env['HTTP_SERVICE']}'")
end