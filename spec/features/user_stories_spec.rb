# As a user
# So that I can see my name in lights
# I would like to register my name before playing the game

feature 'User can submit name' do
  scenario 'On game start, user can submit his name' do
    sign_in_and_play
    expect(page).to have_content('John')
  end
end

# As a user
# So that I can play my turn
# I need to be able to choose one option between paper/scissors/rock

feature 'User choice' do
  scenario 'User can pick rock/scissors/paper before each turn' do
    sign_in_and_play
    click_button('Next turn')
    click_button('Paper')
    expect(page).to have_content('You picked: Paper')
  end
end
