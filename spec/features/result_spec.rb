feature 'Winner' do
  scenario 'player wins' do
    sign_in_and_play
    computer_choice("Scissors")
    click_button 'Rock'

    expect(page).to have_content("Alice wins!")
  end

  scenario 'computer wins' do
    sign_in_and_play
    computer_choice("Paper")
    click_button 'Rock'

    expect(page).to have_content("Computer wins!")
  end

  scenario 'game keeps going' do
    sign_in_and_play
    computer_choice("Paper")
    click_button 'Rock'
    click_button "Let's play again"

    expect(page).to have_current_path('/play')
  end
end
