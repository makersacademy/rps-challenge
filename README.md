# RPS Challenge

This is a bit of a mess! I was planning to come back to it, but then wasn't very well over the weekend, so instead have written in here where I got to and what I was aiming to do. 

The biggest issue at the moment is there is only one rspec test! Which I know is not cool. I kept getting an error about rackup when I ran rspec and couldn't work out why, so moved on to just writing the code in the hope I'd fix it later on. 

And then in terms of the code - I had just got to the point of writing out all the if/else statements for the rock, paper, scissors options - when I realised that would need to be moved into a seperate 'game' class, so my plan was to write something like a 'play' method in the game class, which would handle all the actual game code and return a true/false statement back to the app.rb which would then be used to decide the winner. 

The other thing to mention is the only way I could think of someone selecting rock, paper or scissors would be to go to a different view for each choice, but then that seemed like you'd end up repeating a lot of code. So I was trying to work out if there is a way to identify which button someone had pressed but re-direct to the same page, but I couldn't work out how.
