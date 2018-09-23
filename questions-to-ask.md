### Questions that have developed whilst completing this challenge:
1. This test passed when I typed that. However I haven't created the index erb yet and it doesn't have that text. Why is that?
```ruby
    # Test:
    it "#visit" do
      visit '/'
      expect(page).to have_text("The Greatest Game of Rock, Paper, and Scissors")
    end

    # Passed:
    get '/' do
      erb :index
    end
  
```
   
2. This error is always given to me, until I set a srand. However I thought this would at least pass the test sometimes? Why isn't it random testing?
```bash
  1) RockPaperScissors Start Multiplayer Functionality flips coin
  Failure/Error: expect(page).to have_content("It's Squidward's turn!")
  expected to find text "It's Squidward's turn!" in "Patrick vs Squidward! It's Patrick's turn!"
```