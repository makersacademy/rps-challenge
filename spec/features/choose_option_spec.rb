feature 'Choose option' do
  scenario 'User enters a name, lands on the play page, chooses an option and see result' do
    enter_name
    click_button 'Rock'
    expect(page).to have_content 'You chose: Rock'
    expect(page).to have_content(/The computer chose: Rock|Paper|Scissors/)
    expect(page).to have_content(/You win|You lose|This is a draw/)
    expect(page).to have_button 'Play again'
  end
end
