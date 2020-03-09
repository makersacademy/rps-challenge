# RPS WEEKEND CHALLENGE.

 - My aproach to the challenge is absolutely based in a walkthroug published by Makers in youtube.

 - I tried to replicate a domain model, with a controller and a viewer.
 - In the controller i created the gets a post responde, paths, as long as sessions.
 - Ih the views i created a basic response form to introduce the name of the player and the decisions.
 - The Games rules are stablished as constant within a hash and i tried to refactor the code to have better separation of concerns, 
 creating two diferent classes a web helper to contain auxiliary methods.
 - The game mechanics are controlled for the win, draw , lose methods, in combination with instance variables storaged at sessions.
 - Everything has been tested and at this poing rspec and capybara pass all test.
 - Eventhough for a reason i have to research the test are not passing my last class eventhoug everything seem normal (to me, which honestly at this poing of my learning does not mean much.)
 - I did not implement any css style to the program, that task will be acomplished in future commits.


 Special thanks to the person who has uploades the walkthrough to this callenge, it has been a direct inspiration and it has been an awesome fountain of learning. I would like to remark that my code it is almost the same as in the walkthroug, so not credit at all for me, eventhoug i spent many hours trying to make it mine.

 ## IMPROVEMENTS 9/03/2020.

I have just improved the code and added some style css. The game is absolutely functional at this point, is just ugly as hell but it does the work.
Some improvementns regarding css style are to come in the near future.

Two rspec tests still failing at the moment. I have to figure it out why.