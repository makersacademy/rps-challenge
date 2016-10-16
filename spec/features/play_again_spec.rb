require './app.rb'

feature 'play again' do
	before { sign_in_and_play }
	
	scenario "game shows outcome when rock chosen" do
		click_button "Rock"
		find_button('Play Again').click
		expect(page).to have_button "Rock"
	end

end