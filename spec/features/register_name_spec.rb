feature 'landing page' do

  # As a marketeer
  # So that I can enjoy myself away from the daily grind
  # I would like to welcome to play rock/paper/scissors
  scenario 'Welcome message' do
    visit('/')
    expect(page).to have_content 'Welcome to Rock Paper Scissors'
  end

  # As a marketeer
  # So that I can see my name in lights
  # I would like to register my name before playing an online game

  scenario 'updates form and registers player' do
    visit('/')
    fill_in('player_one', with: "SHWETA")
    click_button "Start game!"
    expect(page).to have_content 'Welcome : SHWETA!'
  end

end
