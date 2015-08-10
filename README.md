To Makers Coaches:

I completed (or pretty much completed) the basic challenge + Spock and lizard, which is reflected in the following commit:

 9bfc93d 2015-08-09 | Added spock and lizard [Haroon]

 After that I decided to play around with the domain before implementing a two player version. I have not had time to finish that strategy, so the Head is woefully incomplete (see notes below on the change in my approach to the domain).

 ----The Domain----

 Upto  9bfc93d the domain consists of Player, Game, and Weapon, with a Score_Calculator module adding some functionality to Game. The rational for the module is that Game class in my view should be free to impliment a diversity of scoring regimes which could become quite complexity. That potential ompexity is not for a Game class to manage.

Player simply throws weapons. Weapons simply defines relative weapon strength, and Game registers players, and makes weapons available for game play. Score_calculator functions determine win, loss draw. 

By having a Weapon class extension to Spock and lizard was easy (no changes to existing code) since it merely involved initializing new weapon types.

The main remaining dependency in this scheme is score_calculator's reliance on Weapon. That can be somewhat managed with with dependency injection and by making parameter order moot, but I never had time. Once those class level dependencies are removed, Score_Calculator module and Weapon class are inevitably linked by the former's #beats? method.

---The big model change ----

After 9bfc93d, the model is changed. Player class is removed and Score_calculator becomes a class rather than a module, alongside Game and Weapon. There are no dependcies in the model layer, with communication being achieved between classes via Get and Posts in the web controller. In effect Player class has been replaced by the client, through which the classes in the model communicate. It is not clear if this strategy makes sense.








