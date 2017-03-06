#Rock, Paper, Scissors Weekend Challenge


I decided to move the Scissors button to the middle of the three even though it doesn't read as expected (Rock, Scissors, Paper?). I did this because being the longest word it stuck out at the end and was graphically jarring. At this eye-candy stage in the game I felt the user would notice the asymmetry before the odd word order.


#With more time I would -

Implement a best-of-three game as per the accepted game rules, perhaps using an array to store scores temporarily within the Game class.

The HTML in the .erb files is repetitive. With time I would research how to farm it out to a single file and then link the rest of them to it.

#Issues

The Game class repeats instantiation in every ‘it’ block. I considered using doubles at each expectation but that seemed to be replacing one type of repetition for another. However I need practice with doubles and so opted them in.

I couldn't see any other way to tackle the problem other than by overhauling my code so that the Game class wouldn't expect any arguments.
