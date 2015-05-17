Given(/^I choose radio button "([^"]*)"$/) do |choice|
  page.choose(choice)
end

Given(/^my opponent chooses "([^"]*)" next$/) do |arg1|
  allow(@@game.player_2).to receive(:random_selection).and_return("Scissors")
end

# allow(play).to receive(:auto).and_return(play_result.to_sym)