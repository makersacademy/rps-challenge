feature 'Game start' do

  # As a user
  # So that I can see my name in lights
  # I would like to register my name before playing the game

  scenario 'On game start, user can submit his name' do
    sign_in_and_play
    expect(page).to have_content('John')
  end

end
