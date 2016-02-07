feature 'Can register name' do
  # As a marketeer
  # So that I can see my name in lights
  # I would like to register my name before playing an online game
  scenario 'register name before a game' do
    sign_in_and_play
    expect(page).to have_content 'Ryu'
  end
end
