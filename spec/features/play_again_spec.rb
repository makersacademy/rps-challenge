feature 'Play again' do
  scenario 'can start another game' do
    sign_in_and_play
    click_button('Play')
    click_button('Play again')
    expect(page).to have_content("Select an option and press 'Play'")
  end
end
