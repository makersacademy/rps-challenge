feature 'Show results' do
	
	before do
		sign_in_and_play_1_player
	end

	scenario "Shows rock if the player chose rock" do

		click_button "Rock"
		expect(page).to have_content "Sam chose Rock!"
	end
	scenario "Shows paper if the player chose paper" do
		click_button "Paper"
		expect(page).to have_content "Sam chose Paper!"
	end
	scenario "Shows scissors if the player chose scissors" do
		click_button "Scissors"
		expect(page).to have_content "Sam chose Scissors!"
	end

	scenario "Shows the computerised opponent's choice" do
		allow(Kernel).to receive(:rand).and_return(1)
		click_button "Rock"
		expect(page).to have_content "Computer chose Paper!"
	end

	scenario "States that the player has won" do
		allow(Kernel).to receive(:rand).and_return(1)
		click_button "Scissors"
		expect(page).to have_content "Scissors beats Paper! Sam wins!"
	end
	scenario "States that the computer opponent has won" do
		allow(Kernel).to receive(:rand).and_return(1)
		click_button "Rock"
		expect(page).to have_content "Paper beats Rock! Computer wins!"
	end
	scenario "States that the game is a tie" do
		allow(Kernel).to receive(:rand).and_return(0)
		click_button "Rock"
		expect(page).to have_content "The game is a tie!"
	end
end