require 'sinatra'
require 'tropo-webapi-ruby'
require 'net/http'

get '/' do
	"Hello World!"
end

post '/sms.json' do
	t = Tropo::Generator.new
	v = Tropo::Generator.parse request.env["rack.input"].read

	#debug here to see what is returned
	puts v[:session]

	#fill this in with the text content
	msg = ''

	puts ''
	puts msg
	puts ''
	#do something with the message

end

post '/voice.json' do
	t = Tropo::Generator.new

	t.ask 	:name => 'digit',
			:timeout => 60,
			:say => {:value => "Hello! What year were you born?"},
			:choices => {:value => "[4 DIGITS]"}

	t.on :event => 'continue', :next => '/continue.json'

	t.response
end

post '/continue.json' do
	t = Tropo::Generator.new
	v = Tropo::Generator.parse request.env["rack.input"].read

	answer = v[:result][:actions][:digit][:value]

	time = 2013 - Integer(answer)

	t.say(:value => "Wow! That was " + String(time) + " years ago.")

	t.response
end



