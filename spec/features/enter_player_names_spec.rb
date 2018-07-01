require "./rps.rb"

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
feature 'Enter player name' do
  scenario 'Can submit name to play game' do
    register_and_play
    expect(page).to have_content('Welcome Jay to Rock/ Paper/ Scissors!')
  end

end
