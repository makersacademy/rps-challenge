feature 'player should be presented with three choices after entering their name' do
  scenario 'user sees three choices (rock, paper, or scissors)' do
    sign_in_and_play
    expect(page).to have_content "👊"
    expect(page).to have_content "✋"
    expect(page).to have_content "✌"
  end

  feature 'player can play a game of RPS in which the computer randomly selects a move'
    scenario 'player should be able to choose one of the options presented' do
      sign_in_and_play
      click_button "👊"
      srand(4)
      expect(page).to have_content "Finn: 👊 Computer: ✌"
    end

  # scenario 'user picks rock, computer picks scissors' do
  #   sign_in_and_play
  #   click_button "👊"
  #   srand(4)
  #   expect(page).to have_content "You Won!"
  # end

  # scenario 'user picks scissors, computer picks scissors' do
  #   sign_in_and_play
  #   click_button "✌"
  #   srand(4)
  #   expect(page).to have_content "It's a draw!"
  # end

  # scenario 'user picks paper while computer picks scissors' do
  #   sign_in_and_play
  #   click_button "✋"
  #   srand(4)
  #   expect(page).to have_content "Unlucky - you lose."
  # end
end
