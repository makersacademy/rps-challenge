# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'playing a RPS game' do

  # As a marketeer
  # So I can play a game
  # I would like to select an RPS option

  scenario 'I can see my options to play' do
    sign_in_and_play
    expect(page).to have_content('Rock')
    expect(page).to have_content('Paper')
    expect(page).to have_content('Scissors')
  end
end
