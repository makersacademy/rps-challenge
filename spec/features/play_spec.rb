feature 'playing a game' do

  before do
    visit('/')
    fill_in('player_one', with: "SHWETA")
    click_button 'Start game!'
  end
  # As a marketeer
  # So I can play a game
  # I want to see the moves I can play
  scenario 'see the  options' do
    expect(page).to have_selector("input[value='rock']")
    expect(page).to have_selector("input[value='paper']")
    expect(page).to have_selector("input[value='scissors']")
    expect(page).to have_button 'Submit'
  end

  # As a marketeer
  # So I can play a game
  # I want to choose a shape to play

  scenario 'Player chooses move and gets confirmation' do
    choose 'rock'
    click_button 'Submit'
    # save_and_open_page
    expect(page).to have_content "SHWETA chose rock!"
  end

  # As a marketeer
  # So I can play a game
  # I want the game to choose a rock
  scenario 'Computer chose rock' do
    choose 'rock'
    click_button 'Submit'
    expect(page).to have_content 'Computer chose rock!'
  end  
end