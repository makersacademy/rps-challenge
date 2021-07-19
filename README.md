# Rock Paper Scissors Challenge
## Challenge summary
Create a web app that allows you to play rock paper scissors.
## Steps
1. Gemfile was already created in fork, so installed preset gems. Cleared README. Created filestructure.
2. Create tests for welcome page, entering name. Created app controller and first views erb to with form, and tested post req sent correctly.
3. Tested selecting link to choose move. Create Player object with instance var to store this info (alongside name).
4. Tried to take a look at the site using sinatra, but controller failed to run due to Sinatra reloader not loading. Removed reloader to fix.
5. Expanded move tests and production code to allow for paper and scissors too.
6. Created player tests. Wanted to have the spec file with some stuff, so tests aren't great. Hard to test behaviour as opposed to state for such a simple object. 
7. Created Game tests to test whether it pulls player move correctly, and to allow it to generate a random move.
8. With game passing all of its tests, I changed controller logic to use game as a top level model.
