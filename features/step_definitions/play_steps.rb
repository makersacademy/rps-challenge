# Mainly exists to contain stubs for unpredictable methods (i.e. rand)
require 'cucumber/rspec/doubles'

# Force AI opponent to play a particular way for future move(s?)
# This does not currently work as intended, as it forces play by both parties
Given /^the other player plays "([^\"]*)" next$/ do |play_result|
  allow_any_instance_of(Player).to receive(:play).with(:auto).and_return(play_result)
end
