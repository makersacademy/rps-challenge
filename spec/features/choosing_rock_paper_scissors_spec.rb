feature 'Playing the game' do
  scenario 'Player can choose either rock and get confirmation' do
    visit('/')
    fill_in('player1', with: 'Sam')
    click_button('Submit')
    find("option[value='rock']").click
    click_button("FIGHT!")
    expect(page).to have_content "You chose rock"
  end
end
