require 'sinatra'

set :bind, '0.0.0.0'

get '/' do
    "hello world"
end

get '/submission' do
    left = params["left"].to_i
    right = params["right"].to_i
    if params["operation"] == "+"
        result = left + right
    elsif params["operation"] == "-"
        result = left - right
    elsif params["operation"] == "*"
        result = left * right
    elsif params["operation"] == "/"
        result = left / right
    end
    "<html><body><h1>Result: #{result}</h1></body></html>"
end