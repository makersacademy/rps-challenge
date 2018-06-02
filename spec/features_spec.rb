feature 'Features' do

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
  scenario 'player can enter a name' do
    sign_in_and_play
    expect(page).to have_content('Mr.Spock')
  end

end