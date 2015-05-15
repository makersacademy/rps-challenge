# Mainly exists to contain stubs for unpredictable methods (i.e. rand)

# Force AI opponent to play a particular way for future move(s?)
Given /^the other player plays "([^\"]*)" next$/ do |play_result|
  allow(play).to receive(:auto).and_return(play_result.to_sym)
end
