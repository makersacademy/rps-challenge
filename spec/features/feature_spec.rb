

feature "RPS game" do

	scenario "Seeing player 1's inputted name" do
		sign_in
		expect(page).to have_content "Well hello there, Gio!"
	end

	scenario "Displaying player's choice on /battle page" do
		sign_in
		select "Rock", :from => "player_choice"
		click_button "Submit"
		expect(page).to have_content "Player chose: Rock"
	end

	scenario "Displaying computer's choice on /battle page" do
		allow_any_instance_of(Computer).to receive(:choice).and_return(:Paper)
		sign_in
		select "Rock", :from => "player_choice"
		click_button "Submit"
		expect(page).to have_content "Computer chose: Paper"
	end

	scenario "Computer wins" do
		allow_any_instance_of(Computer).to receive(:choice).and_return("Rock")
		sign_in
		select "Scissors", :from => "player_choice"
		click_button "Submit"
		expect(page).to have_content "Computer wins!"
	end

	scenario "It's a draw" do
		allow_any_instance_of(Computer).to receive(:choice).and_return("Paper")
		sign_in
		select "Paper", :from => 'player_choice'
		click_button "Submit"
		expect(page).to have_content "It's a draw!"
	end

	scenario "Player wins" do
		allow_any_instance_of(Computer).to receive(:choice).and_return("Paper")
		sign_in
		select "Scissors", :from => 'player_choice'
		click_button "Submit"
		expect(page).to have_content "Player wins!"
	end
	
end