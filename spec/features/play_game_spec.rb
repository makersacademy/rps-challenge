feature "playing Rps" do

  scenario 'see rock, paper, scissor choices on page' do
    # presented the choices:
    # (rock, paper and scissors)
    enter_name_and_play
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'can see which they chose' do
    # player1's selection is shown on play page
    enter_name_and_play
    click_button 'Rock'
    expect(page).to have_content('You chose Rock')
  end
end
