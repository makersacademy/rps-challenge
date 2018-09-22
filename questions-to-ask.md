### Questions that have developed whilst completing this challenge:
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
1. This test passed when I typed that. However I haven't created the index erb yet and it doesn't have that text. Why is that?