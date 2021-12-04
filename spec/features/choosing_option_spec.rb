feature "Choosing an option" do
	scenario "choose a play option" do
    register_and_play
    click_button 'Rock'
    expect(page).to have_content 'You chose: Rock'
	end
end