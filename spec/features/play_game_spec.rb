# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'game is playable' do
  scenario 'user is able to play rock paper scissors' do
    register
    fill_in(:player_choice, with: 'rock')
    expect(page).to have_content('Good job mate- you smashed him!')
  end
end
