# RPS Challenge

This is the weekend challenge from the third week of the Maker's Academy. The challenge was to build a rock-paper-scissors web app that would fulfil the following user stories:

`
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
`

### Approach

I modelled the system based on the two stories, using an MVC pattern - https://photos.app.goo.gl/5wdagxgYkECDqhXQ9. 

I then identified the most appropriate starting feature and wrote a feature test for it using Capybara and rspec. When that test failed, I proceeded to write the model, view, and controller code to pass it, writing unit tests for any business logic first. Finally, after each passing test, I would refactor the code and tests before moving on. 

The system uses Ruby and Sinatra, rendering the HTML using ERB views. 
