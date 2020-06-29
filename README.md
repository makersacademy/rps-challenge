Apologies for how it looks - I had trouble getting css/html to work properly and ran out of time to sort it out.

The main problem is that I struggled to set a variable that would be accessible across the website - the score of the player. In app.rb I set "session[:score] = 0", and tried a few different approaches like using '@' or '@@', or even '$', but it will still return a name in the instance that the player wins, meaning it will attempt to +1 to the score. Because this fails, whenever the user wins thewy are greeted with a Name error! 

