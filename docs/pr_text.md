**Rock Paper Scissors**

Please see the Readme for a summary of approach taken and challenges encountered. 

Goals I would like feedback on:

**I can program fluently**
- In particular, I'd like to know if using Weapon class constants in the way I did is considered bad practice
    - Likewise, whether inheritance is a valid choice here for extensibility.
    - Please see `weapon.rb` and subclasses from lines `27-50`
- Some design advice on the usage of multiple .erb files would also be welcome
    - e.g. the use of `player_1.erb` and `player_2.erb` rather than returning to the same page and trying to hide the other player's guesses using logic within the .erb
- I'd also welcome a comment on the lack of a separate printer and player classes
    - Rationale is detailed in the Readme
    - Printer function handled by `Game` lines `22-32`
    - `Game` does use 'win codes' e.g. `self.resolve`, `line 12-16` but it didn't feel right to have logic in the view layer per previous guidelines
    
**I write code that is easy to change**
- I'm unclear as to how well I'm doing on this measure.
- I get the principles, but find it hard to apply in Ruby where explicit types are not visible. Some general thoughts would be greatly appreciated. 

**I can refactor anything**
- The app involved many refactorings (per commit history), but the most significant was the move away from an AI controlled opponent to a human one.
- Commit `09667548` in particular has much of the work for this. 
