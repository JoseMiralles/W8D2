require 'rack'

app = Proc.new do |env|
    request = Rack::Request.new(env)
    response = Rack::Response.new
    response['Content-type'] = 'text/html'
    response.write(request.fullpath)
    response.finish 
end

Rack::Server.start(
    app: app,
    Port: 3000
    )