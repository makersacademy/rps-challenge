
feature 'play Rock Paper Scissors' do
	scenario 'choose a rock and play' do
		register
		choose "weapon", :option => "rock"
		click_button "Play"
		page.has_content?("You won!") or page.has_content?("You lost.") or page.has_content?("You drew.")
	end
	scenario 'choose paper and play' do
		register
		choose "weapon", :option => "paper"
		click_button "Play"
		page.has_content?("You won!") or page.has_content?("You lost.") or page.has_content?("You drew.")
	end
	scenario 'choose scissor and play' do
		register
		choose "weapon", :option => "scissors"
		click_button "Play"
		page.has_content?("You won!") or page.has_content?("You lost.") or page.has_content?("You drew.")
	end
end