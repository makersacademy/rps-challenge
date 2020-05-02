** My approach

1. Create several folders: features, views
  - App.rb
  - Lib (model: logic)
  - Spec (rspec tests) -> Features (capybara), incl web_helpers.rb
  - Views (controller: presentation, erb files)
2. Configure spec_helper.rb file?
  - set rack equal to test
  - require Sinatra app file
  - tell Capybara about our app class
  - require relevant files (i.e. web_helper)
3. Checked Gemfiles:
  - missing shotgun/rackup
  - missing Sinatra gem
4. Install sinatra gem [x]
5. Install shotgun gem [x]
6. run bundle from command line
7. Create app.rb file --> Controller
8. Configure shotgun in app.rb
- place configuration inside RPS class
- configure(:development) { set :session_secret, 'set' }
9. Set up Sinatra application using sinatra's modular style
 - Sinatra::Base
10. In the app.rb file, include this to start the server if ruby file executed directly:
run! if app_file == $0
11. Create config.ru file, necessary to run the app
- Added this to the file:
require_relative './app'
run RPS
12. Tried running shotgun:
- shotgun app.rb -p 4567 (didn't work)
- shotgun app.rb (didn't work)
- Fixed enable :sessions
- Shotgun didn't work: shotgun app.rb
- Rack-up worked (rackup -p 4567)
- Shotgun worked (shotgun -p 4567)
15. Set-up is more or less finished
16. Address first user story: register name before starting game
- '/' homepage is a form, takes user's name
- '/name' post request with user name, redirect to...
- '/play' page that starts game
- Views / ERB pages for each route (HTML etc)
- Feature tests for each ERB/View (capybara)
17. Checking capybara is set up correctly
- Hoping for the best, saw that the spec-helper file had required capybara/rspec. Although battle challenge spec-helper file had more requirements... not sure why...
18. Wrote first feature test to get the player's name
- ran it in rspec, 0 examples, 0 failures
- create file in views folder: reg_name.erb
- placed reg_name.erb inside '/' route on app.rb
- ran RSPEC again and got two errors unrelated to my feature test
- 1st error: "rack-test requires a rack application, but none was given"
- 2nd error: same as above
19. Made changes to various files and have got new error, which occurs when user clicks button "game on!".
> Errno::ENOENT:
       No such file or directory @ rb_sysopen - /Users/marijatrachtenberg/Makers/Week3/RPS/views/start_game.erb
- Started web app through browser. Everything showed up on homepage, except error thrown when clicking the 'game on' button. Error log towards bottom syas it is a sinatra error:
  #<Errno::ENOENT: No such file or directory @ rb_sysopen - /Users/marijatrachtenberg/Makers/Week3/RPS/views/start_game.erb>
> It says there is no file for start_game.erb, which is true. So if i create this file, error should be fixed.
> Fixed above errors
20. Running RSPEC again throws errors:  
> Failure/Error: expect(page).to have_content 'Born2Win vs. Computer'
expected to find text "Born2Win vs. Computer" in "vs. Computer\n: make your choice."
- Still get the same error. After printing params, I see empty hash and nil. The names are not being recorded.
- I am hypothesizing that perhaps this has something to do with not having installed "gem install selenium" and "brew install geckodriver" and the "pry" set up?
- I wasn't even able to get pry to work, nor in irb.
- I am not sure what happened but it works now.
21. 
