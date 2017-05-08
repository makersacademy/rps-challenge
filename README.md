#Rock, Paper, Scissors Weekend Challenge


  * I decided to move the Scissors button to the middle of the three even though it doesn't read as expected (Rock, Scissors, Paper?). I did this because being the longest word it stuck out at the end and was graphically jarring. At this eye-candy stage in the game I felt the user would notice the asymmetry before the odd word order.


##To Play

1. Please navigate to the appropriate directory in your console and type 'bundle install'.

2. Type 'rspec' in order to run the unit and feature tests.

3. Again, from the correct directory, type 'rackup' in order to start the server. The output will tell you which port to use for the next step.

4. In your browser, type 'localhost: ' followed by whatever port the server has selected.

5. Play!


##For a more advanced iteration I would...

  * Implement a best-of-three game as per the accepted game rules, perhaps using an array to store scores temporarily within the Game class.

  * Make the game a touch more intuitive. After the initial play, when clicking the **Try Again** button, the user is taken back to the same greeting page as before as if visiting the site for the first time. This needs to be changed.


##Issues

  * The **Game** class repeats instantiation in every *it* block. I considered inserting *let* helper methods at each example but that seemed to be replacing one type of repetition for another. I'm sure there's a way to accomplish this but it eludes me at present.

  I couldn't see any other way to tackle the problem other than by overhauling my code so that the **Game** class wouldn't expect any arguments.
