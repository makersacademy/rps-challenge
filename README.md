Takeaway Challenge
==================
Description of Project
----------------------
This project implements the following user stories:

```sh
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Testing and metrics
-------------------
Testing is via RSpec, coveralls support is integrated

Copyright notice
----------------
This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.

Documentation instructions
--------------------------
- Specification consists of Rspec tests in ./spec/

Installation instructions
-------------------------
- clone from https://github.com/peteburch223/rps-challenge.git
- run `bundle` to ensure necessary gems are installed and available
- test with `coveralls report`
- start Sinatra with `ruby app.rb`
- access the app at localhost:4567

Project created in Ruby v2.2.3

Known Issues
------------
- as the state is saved in a class instance variable (database use was beyond the scope of the project), if a player selects one-player game and another player selects two-player game, the system will crash


Authors
-------
Initial coding: Pete BURCH - peteburch223@gmail.com
