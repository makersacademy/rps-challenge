# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'enter names' do
  scenario 'allows players to enter their name and submit them' do
    sign_in_and_play
    expect(page).to have_content 'Rock, Paper, Scissors! Poppy vs. Computer'
  end

end