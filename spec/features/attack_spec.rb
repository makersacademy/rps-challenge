feature 'Attacking' do
  scenario 'Player attacks Computer with Rock' do
    sign_in_and_play
    fill_in :player_attack, with: 'Rock'
    click_button 'Submit'
    expect(page).not_to have_content 'Dave: Paper'
    expect(page).not_to have_content 'Dave: Scissors'
    expect(page).to have_content 'Dave: Rock'
  end

  scenario 'Player attacks Computer with Paper' do
    sign_in_and_play
    fill_in :player_attack, with: 'Paper'
    click_button 'Submit'
    expect(page).not_to have_content 'Dave: Rock'
    expect(page).not_to have_content 'Dave: Scissors'
    expect(page).to have_content 'Dave: Paper'
  end

  scenario 'Player attacks Computer with Scissors' do
    sign_in_and_play
    fill_in :player_attack, with: 'Scissors'
    click_button 'Submit'
    expect(page).not_to have_content 'Dave: Paper'
    expect(page).not_to have_content 'Dave: Rock'
    expect(page).to have_content 'Dave: Scissors'
  end

  # scenario 'Computer attacks Player with Rock' do
  #   sign_in_and_play
  #   fill_in :player_attack, with: 'Scissors'
  #   click_button 'Submit'
  #   @computer_move = "Rock"
  #   expect(page).not_to have_content 'Computer: Paper'
  #   expect(page).not_to have_content 'Computer: Rock'
  #   expect(page).to have_content 'Computer: Rock'
  # end
  #
  # scenario 'Computer attacks Player with Paper' do
  #   sign_in_and_play
  #   fill_in :player_attack, with: 'Scissors'
  #   click_button 'Submit'
  #   @computer_move = "Paper"
  #   expect(page).not_to have_content 'Computer: Rock'
  #   expect(page).not_to have_content 'Computer: Scissors'
  #   expect(page).to have_content 'Computer: Paper'
  # end
  #
  # scenario 'Computer attacks Player with Scissors' do
  #   sign_in_and_play
  #   fill_in :player_attack, with: 'Scissors'
  #   click_button 'Submit'
  #   @computer_move = "Scissors"
  #   expect(page).not_to have_content 'Computer: Paper'
  #   expect(page).not_to have_content 'Computer: Rock'
  #   expect(page).to have_content 'Computer: Scissors'
  # end
  #
  # scenario 'Player / Computer Draw - Scissors' do
  #   sign_in_and_play
  #   fill_in :player_attack, with: 'Scissors'
  #   click_button 'Submit'
  #   @computer_move == "Scissors"
  #   expect(page).to have_content 'Draw!'
  # end
  #
  # scenario 'Player / Computer Draw - Rock' do
  #   sign_in_and_play
  #   fill_in :player_attack, with: 'Rock'
  #   click_button 'Submit'
  #   @computer_move == "Rock"
  #   expect(page).to have_content 'Draw!'
  # end
  #
  # scenario 'Player / Computer Draw - Paper' do
  #   sign_in_and_play
  #   fill_in :player_attack, with: 'Paper'
  #   click_button 'Submit'
  #   @computer_move == "Paper"
  #   expect(page).to have_content 'Draw!'
  # end

end
