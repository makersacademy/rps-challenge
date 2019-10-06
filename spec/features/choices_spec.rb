feature 'Choice' do
  scenario 'player can see choices' do
    sign_in_and_play
    expect(page).to have_content "Which option do you want to play: rock, paper, or scissors?"
  end

  scenario 'player can choose rock' do
    sign_in_and_play
    fill_in :choice, with: 'Rock'
    click_button 'Play'
    expect(page).to have_content "You: Rock"
  end

  scenario 'player can choose paper' do
    sign_in_and_play
    fill_in :choice, with: 'Paper'
    click_button 'Play'
    expect(page).to have_content "You: Paper"
  end

  scenario 'player can choose scissors' do
    sign_in_and_play
    fill_in :choice, with: 'Scissors'
    click_button 'Play'
    expect(page).to have_content "Scissors"
  end
end
