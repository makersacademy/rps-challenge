feature 'Starts the game' do
  scenario 'should let the user play a game' do
    enter_name_and_play
    click_button "LET ME AT 'EM!"
    expect(page).to have_content "Chose Your Weapon"
  end
end
