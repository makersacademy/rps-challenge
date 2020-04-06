feature 'play rock, paper, scissors, lizard, spock' do
  scenario 'player 1 - spock, player 2 - lizard' do
    register_and_play
    click_button 'Spock'
    click_button 'Lizard'
    expect(page).to have_content "Su wins - lizard poisons spock"
  end

  scenario 'player 1 - lizard, player 2 - paper' do
    register_and_play
    click_button 'Lizard'
    click_button 'Paper'
    expect(page).to have_content "Phil wins - lizard eats paper"
  end
end