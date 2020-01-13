#BUILD STORY

##Setup
First I set up the enviroment and the basic file structure 
├── Gemfile
├── Gemfile.lock
├── README_BUILD.md
├── Rakefile
├── app.rb
├── config.ru
├── coverage
├── docs
│   └── review.md
├── lib
│   └── player.rb
├── spec
│   ├── feature
│   │   ├── enter_name_spec.rb
│   │   ├── home_spec.rb
│   │   └── out_put_spec.rb
│   └── spec_helper.rb
└── views
    ├── home.erb
    ├── play.erb
    └── rock.erb

Ran bundle to make sure all teh gems are up to date and running as well as adding paths in config.ru and in spec-helper telling it to run Capybara on the set app.

##Build
Aas with TDD I start with the test before building code 
below is the suite of test and how i passed them. 
Sturcture
there will be the app controler to set up pathways and requests for the information to be stored and then interpolated into html in the Views:erb section with html.
I will need to crete three lib files to hold logic 
 - Player - to store name and choice 
 - computer - to randomly select number between 1-3
 - game - to store logic to decide who wone dependant on the respective choices.

PAGES
 This will be done in three pages 
 Page 1 - takes name od the player
 Page 2 - will list choices and name given on first page + message describing actions required
 Page 3 - will show the out come of the game (winner/loser) with both player name and choise and the computers choice.


###Tests
1- Test that the web page holds "welcome" text
2- Test that the name enteren in the form was printed on the options page
3- 

###Logic 
1- Passed by Created the app.rb controller file where we will contrle the paths of information in the server. Created first path to home '/' get request and the index erb file to interpolate text into html.

2- Passed by adding a post request to the controler to store attributes of like name given. form added to take text name and a submit button to move on to the next page. 

###Problems 
I stumbled at the start to set up the enviroment. I was comfortable setting up from scratch but when I was given a partialy set up directory as from the GIT clone I was constantly worried about creating conflictions in the spec_helpers,gemfiles and config.ru. There were 

Once I was setup it was building well, I understand the priciples behind the MVC comunication and how they interface with the different languages and data.


