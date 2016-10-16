require './app.rb'

feature 'show outcome' do
	before { sign_in_and_play }
	
	scenario "game shows outcome when rock chosen" do
		allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
		click_button "rock"
		expect(page).to have_text("You won")
	end

	scenario "game shows outcome when scissors is chosen" do
		allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
		click_button "scissors"
		expect(page).to have_text("You won")
	end

	scenario "game shows outcome when paper is chosen" do
		allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
		click_button "paper"
		expect(page).to have_text("You won")
	end

end