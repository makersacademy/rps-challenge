#### - First test was simple welcome test to make sure webiste is working - it should probably have been in a spec_infrastructure directory though for best practice. First step of TDD approach - test my environment behaves as expected complete ####


#### - Second test has been to test whether a user can enter their name and see it returned to them onscreen. This is the first step in completing the first user story.
 - Have reached point of test passing, and code returns users name, however the site is not displaying the name. The variable is holding its value as it is a class variable, which I felt was easier than the self. methods. The problem seems to come when the name is passed to the play view.
 - Class variable could be cause - research incase of back of house shenanigans
- The answer lay in an earlier learning - The session. I changed the class variable to a session, found all problems vanished when I refactored to use this.
#### The second test expected the user to input their name and have it returned to them. This is functionally complete but does not have any styling to satisfy the 'in lights' part. My plan is to make the site work functionally to completion. Once the app works as required I will add the design touches. ####

- Further learnings from test 2. The session allows us to hold data during a session of use hence its names. If the app required it due to size and cleanliness this could be refactored to a class due to an objects inherent ability to store data when needed.
- I had a really nice but challenging refactor process here, I passed tests early and refactoring caused some issues which I had to overcome following a debugging method, which surprisingly, I managed to do calmly and rationally which allowed me to crack the problems and move on.


#### The 3rd feature test formed from the plan that the next most important step would be for the player to make a choice and the app hold that choice. Through the use of a session and standard parameter usage this has been achieved, also implementing a second get - redirect - post loop, the flow of the site I currently enjoy, even if it is poor. I originally wanted to use a check box system for the player choice. However this was more difficult to implement that planned and so I returned to a simpler method to reinforce my learnings. I will hopefully refactor this at a later date, however this would require thought as orginally I had planned for secret commands on specific non RPS entries, i.e "my little pony" would return "friendship is magic, magic is heresy" or other such frivolities. With this in mind perhaps it will be best if it stays as typed entry?




#### After the 3rd feature test I decided to refactor player into a class as the controller was handling both player info during the session and the flow of the site.
- Next unit test is for the player object to set and hold a weapon variable via a choice method.
- Test complete and class extraction completed with it. Was interesting learning how to get the class to interact with the display. Knowing that info is flowing through the model correctly is rewarding and informative!

#### The next test is around the pc taking and storing a choice as this is the next most important step.
- Going into this I realised I need to actually test drive a new class, game, which will handle both PC's choice and comparison when we test drive that (Perhaps guilty of thinking too far ahead here? Will this though guide my TDD now? Or will my TDD change my thought?)
- Throughout testing process, the class became a GameAI class, singly responsible for making and returning the AI's choice.
- This was a really good show of TDD principles and why its better than planning too far ahead in the way mentioned above.
- During this step the class changed name a few times before settling on GameAI, while not overly happy with the name it is the most descriptive despite the wildly liberally inference of 'intelligence' in the machine here.
- I first thought I should mock or stub the unit test for the random choice, realising this to be rather vacuous I changed to a less pretty .or eq method, this while not pretty or necessarily the cleanest code does test my class outputs what I expect and nothing else. This test could be a target on code review and for later refactoring.
