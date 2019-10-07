# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'Enter a name' do
  scenario 'player 1 enters their name' do
    sign_in_and_play
    expect(page).to have_content 'Today\'s challenger is Bob'
  end
end
