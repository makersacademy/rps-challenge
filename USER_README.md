scenario 1
I can enter my name
expect to see an input field for entering name and a button for submitting name

client
browser: localhost:9292
HTML: [name] [submit]

request
method: get
path: /
(i write address)

server application
RUBY HANDLER (Sinatra)
method: get
path: /
(post office looks at the address and can then use it)

response
HTML (erb:index)

Scenario 2
I can submit my name

client
browser: localhost:9292

request
method: post
path: /name

server application
RUBY HANDLER (Sinatra)
method: post
path: /name

response
redirect to get: /name page

Scenario 3
I can see my name and options of rock paper scissors and choose one

client
browser: localhost:9292
choose one of the options: ROCK PAPER SCISSORS" [choice] [submit]

request
method: get
path: /name

server application
Ruby handler (sinatra)
method: get
route: /name

response
HTML (erb: name)

Scenario 4
I can choose an option and submit it

client
browser: localhost: 9292
[rock][submit]

request
method: post
path: /play

server application
ruby HANDLER
method: post
route: /play

response
redirect /play

scenario 5
I can get an outcome (win or lose)

client
browser: loclahost: 9292
you win! or you lose!

request
methpod: get
route: /play

server application
ruby HANDLER
method: get
route: /play

response
html(erb: play)
plauy again link redirects to homepage

ruby logic
game.new(params[:choice])
game.play (returns true or false) if won or lost

# partials
