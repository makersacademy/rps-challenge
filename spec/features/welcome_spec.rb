feature 'welcome' do
	scenario 'The player is welcomed!' do
    sign_in_and_play
    expect(page).to have_content("Welcome Lisa!")
    click_button 'play'
  end
end
