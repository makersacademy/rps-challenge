require './app.rb'

feature 'show outcome' do
	before { sign_in_and_play }
	
	scenario "game shows outcome when rock chosen", focus: :true do
		allow_any_instance_of(Array).to receive(:sample).and_return("Scissors")
		click_button "Rock"
		expect(page).to have_text("You won")
	end

	scenario "game shows outcome when paper chosen" do
		click_button "Rock"
		expect(page).to have_text(/You\s(won|lost|drew)/)
	end

	scenario "game shows outcome when scissors chosen" do
		click_button "Rock"
		expect(page).to have_text(/You\s(won|lost|drew)/)
	end

end