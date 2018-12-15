#### - First test was simple welcome test to make sure webiste is working - it should probably have been in a spec_infrastructure directory though for best practice. First step of TDD approach - test my environment behaves as expected complete ####


#### - Second test has been to test whether a user can enter their name and see it returned to them onscreen. This is the first step in completing the first user story.
 - Have reached point of test passing, and code returns users name, however the site is not displaying the name. The variable is holding its value as it is a class variable, which I felt was easier than the self. methods. The problem seems to come when the name is passed to the play view.
 - Class variable could be cause - research incase of back of house shenanigans
