require './app.rb'

feature 'show outcome' do
	before { sign_in_and_play }
	
	scenario "game shows outcome when rock chosen" do
		click_button "Rock"
		expect(page).to have_text(/You\s(won|lost|drew)/)
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