#Rock, Paper, Scissors Weekend Challenge


I decided to move the Scissors button to the middle of the three even though it doesn't read as expected (Rock, Scissors, Paper?). I did this because being the longest word it stuck out at the end and was graphically jarring. At this eye-candy stage in the game I felt the user would notice the asymmetry before the odd word order.


##With more time I would...

 ..* Implement a best-of-three game as per the accepted game rules, perhaps using an array to store scores temporarily within the Game class.

 ..* Curb the HTML repetition in the *.erb*. With time I would research how to farm it out to a single file and then link the rest of them to it.

..* Make the game a touch more intuitiveAfter the initial play, when clicking the **Try Again** button, the user is taken back to the same greeting page as before as if visiting the site for the first time. This needs to be changed.

..* Didn't have a chance to add images and setup instructions.


#Issues

..* The **Game** class repeats instantiation in every *it* block. I considered inserting *let* helper methods at each example but that seemed to be replacing one type of repetition for another. I'm sure there's a way to accomplish this but it eludes me at present.

I couldn't see any other way to tackle the problem other than by overhauling my code so that the **Game** class wouldn't expect any arguments.
