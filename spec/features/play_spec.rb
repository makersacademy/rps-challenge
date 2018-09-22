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
  # I want the game to choose a random option
  scenario 'Computer chose random option' do
    # player one's move
    choose 'rock'
    click_button 'Submit'
    # player two's move
    comp_values = ["Computer chose rock!", "Computer chose paper!", "Computer chose scissors!"]
    expect(page).to satisfy { |page| page.has_content?(comp_values[0]) or page.has_content?(comp_values[1]) or page.has_content?(comp_values[2])}
  end 
end