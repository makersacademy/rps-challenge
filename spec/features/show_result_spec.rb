feature 'Show results' do
	scenario "Shows rock if the player chose rock" do
		sign_in_and_play
		click_button "Rock"
		expect(page).to have_content "Sam chose Rock!"
	end
	scenario "Shows paper if the player chose paper" do
		sign_in_and_play
		click_button "Paper"
		expect(page).to have_content "Sam chose Paper!"
	end
	scenario "Shows scissors if the player chose scissors" do
		sign_in_and_play
		click_button "Scissors"
		expect(page).to have_content "Sam chose Scissors!"
	end
end