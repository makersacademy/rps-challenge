#### - First test was simple welcome test to make sure webiste is working - it should probably have been in a spec_infrastructure directory though for best practice. First step of TDD approach - test my environment behaves as expected complete ####


#### - Second test has been to test whether a user can enter their name and see it returned to them onscreen. This is the first step in completing the first user story.
 - Have reached point of test passing, and code returns users name, however the site is not displaying the name. The variable is holding its value as it is a class variable, which I felt was easier than the self. methods. The problem seems to come when the name is passed to the play view.
 - Class variable could be cause - research incase of back of house shenanigans
- The answer lay in an earlier learning - The session. I changed the class variable to a session, found all problems vanished when I refactored to use this.
#### The second test expected the user to input their name and have it returned to them. This is functionally complete but does not have any styling to satisfy the 'in lights' part. My plan is to make the site work functionally to completion. Once the app works as required I will add the design touches. ####

- Further learnings from test 2. The session allows us to hold data during a session of use hence its names. If the app required it due to size and cleanliness this could be refactored to a class due to an objects inherent ability to store data when needed.
- I had a really nice but challenging refactor process here, I passed tests early and refactoring caused some issues which I had to overcome following a debugging method, which surprisingly, I managed to do calmly and rationally which allowed me to crack the problems and move on.
