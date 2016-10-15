require './app'

feature 'Add Names' do
	scenario "Name can be entered" do
    sign_in_and_play
    expect(page).to have_content "Foobar"
	end
	
end