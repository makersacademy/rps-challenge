# Self-Review - What can be done better.

* Include how to download and run the app.
* I didn't test all possible outcomes of the game, neither at feature nor at unit test level.
* Long if/elsif trees and no Weapon class. However, I chose radio buttons to limit choices so there was no need to check if the weapon chosen by the user was available.
* I created a Computer class (thinking about introducing a 2nd player later but run out of time) but completely forgot about duck-typing.
* I didn't test all possible outcomes of the game, neither at feature nor at unit test level.
* Long if/elsif trees and no Weapon class. However, I chose radio buttons to limit choices so there was no need to check if the weapon chosen by the user was available.


I wrote down questions here and there as comments marked with the friendly symbol:
#::???::

:)

I also have a final question: why my coveralls went from 94% to 92% when I refactor getting rid of the global variable?
