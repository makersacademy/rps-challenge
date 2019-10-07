feature 'Player presented with options' do
  scenario 'player can pick either rock, paper or scissor button' do
    sign_in_and_play
    expect(page).to have_selector(:button, 'Rock')
    expect(page).to have_selector(:button, 'Paper')
    expect(page).to have_selector(:button, 'Scissors')
  end
end

feature 'Player can make a move' do
  scenario 'player chooses rock' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Your move: Rock'
  end

  scenario 'player chooses paper' do
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content 'Your move: Paper'
  end

  scenario 'player chooses scissors' do
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content 'Your move: Scissors'
  end
end
