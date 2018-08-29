feature 'Features - RPS' do

  # As a marketeer
  # So that I can see my name in lights
  # I would like to register my name before playing an online game
  scenario 'player enter his name' do
    sign_in_and_play
    expect(page).to have_content('Sheldon')
  end

  # As a marketeer
  # So that I can enjoy myself away from the daily grind
  # I would like to be able to play rock/paper/scissors
  scenario 'player would play rock paper scissors' do
    sign_in_and_play
    click_button('rock')
  end

  scenario 'play the game' do
    sign_in_and_play
    click_button('rock')
    expect(page).to have_content('Sheldon picked')
  end

end
