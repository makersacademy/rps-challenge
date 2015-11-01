feature 'Change Player:' do
  scenario "User can change player name after any game" do
    register_and_play
    click_button('Rock')
    click_button('Change Player')
    expect(page).to have_content('Register your name to play RPS!')
  end
end
