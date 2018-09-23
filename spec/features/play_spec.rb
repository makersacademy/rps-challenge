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
    # player two's move`
    computer_move = page.find("#player2_move").text
    allowed_moves = ["rock", "paper", "scissors"]
    expect(computer_move).to satisfy { |page| page.include?(allowed_moves[0]) or page.include?(allowed_moves[1]) or page.include?(allowed_moves[2]) }
  end 

  # As a marketeer
  # So I can play a game
  # I want to see a winner

end
