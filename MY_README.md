# RPS Challenge

Description
-------

This is the weekend challenge at the end of my third week at Makers Academy, a 16-week software developer bootcamp. For all the instructions, please refer to the main [README](https://github.com/makersacademy/rps-challenge/blob/master/README.md).

Prerequisites
-------

* Fork this repository
* Clone the new repository into your machine with ```git clone```
* Run the command ```bundle``` in the project directory to ensure you have all the gems

How to run tests
-------

* Run the command ```rspec``` to run the tests from the root folder.

Class Diagrams
-------

| Player                | Computer      | Game                         |
| ---                   | ----          | ---                          |
| @name                 | @choice       | @player                      |
| @choice               |               | @computer                    |
|---------------------- | ------------- | ---------------------------- |
| update_choice(choice) | random_choice | result                       |
|                       |               | update_player_choice(choice) |
|                       |               | update_computer_choice       |

Feature Test
-------

Run from the terminal: ```ruby app.rb```

Open in the browser: http://localhost:4567/result

![Homapage](./images/1_home_page.png)
