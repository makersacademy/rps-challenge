# RPS Challenge

Task
----

Knowing how to build web applications is getting us almost there as web developers!

The Makers Academy Marketing Array ( **MAMA** ) have asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.

Your task is to provide a _Rock, Paper, Scissors_ game for them so they can play on the web with the following user stories:

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Motivation --
-----

Applying my existing knowledge and adapting new concepts, such as MVC to setup a Sinatra application with a working interface that offers the user to play Rock, Paper Scissors against a computer player. This involved building out my views for the layout and front-end interface that I wanted the user to see. Creating my business logic inside of the model to include any back-end functionaltiy and finally the app.rb for the controller aspect of the application. 



Process -
-----


I started by creating some wire frame diagrams to get a visual idea of what I wanted to achieve. Once I was ready I started writing my feature tests to set out a plan before starting to build the routes in the app.rb file. I followed this test driven approach and started to eventually create my logic for the backend functionality.  
Once the logic was setup and working inside the erb files I created singleton method to get rid of the global variables used earlier. Finally I added some CSS to tidy up my interface.


Challenges - 
-----

It took some time to properly build an understanding of how the different sections MVC were interconnected, due to this I ran into multiple nil method issues which took some time to de-bug. I eventually realised that the param wasn't returning what I expected and this stopped my program from returning the RPS results.

Edge cases considered -
-----
* Users can only select items available on the menu
* Meal value resets on entering total to avoid duplicating total_cost

Criteria met -
-----
* All tests passing
* High [Test coverage]
* The code is elegant: every class has a clear responsibility, methods are short etc. 
* Code meets Rubocop guidelines

What I've learnt - 
-----
* How to debug using PRY.
* Using inspect to uncover what is inside a data type ( param data in this case) 
* Singleton method
* How to build a Sinatra application

How to run - 
-----
Program created in Ruby. Can be ran directly from terminal, or inside IRB. (Follow install steps - https://github.com/ruby/irb)

