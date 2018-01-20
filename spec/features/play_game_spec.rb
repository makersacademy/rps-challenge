feature 'play the game' do

  scenario 'the signs (rock, paper, scissors) are presented' do
    register_and_play
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'one of the signs is chosen' do
    register_and_play
    click_button 'Paper'
    expect(page).to have_content 'You have chosen Paper!'
  end

end
