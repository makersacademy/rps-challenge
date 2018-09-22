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

  # As a marketeer
  # So I can play a game
  # I want to see the moves I can play
  scenario 'see the  options' do
    visit('/')
    fill_in('player_one', with: "SHWETA")
    click_button 'Start game!'
    expect(page).to have_selector("input[value='rock']")
    expect(page).to have_selector("input[value='paper']")
    expect(page).to have_selector("input[value='scissors']")
    expect(page).to have_button 'Submit'
    
  end

  # As a marketeer
  # So I can play a game
  # I want to choose a shape to play

  scenario 'Player chooses move and gets confirmation' do
    visit('/')
    fill_in('player_one', with: "SHWETA")
    click_button 'Start game!'
    choose 'rock'
    click_button 'Submit'
    # save_and_open_page
    expect(page).to have_content "SHWETA chose rock!"
  end
end
