feature 'game completed' do
  scenario ' - player 1 one clicks Rock' do
    game_sign_in
    click_button 'Rock'
    expect(page).to have_content 'Jane: Rock'
    expect(page).not_to have_content 'Jane: Paper'
    expect(page).not_to have_content 'Jane: Scissors'
  end

  scenario ' - player 1 one clicks paper' do
    game_sign_in
    click_button 'Paper'
    expect(page).not_to have_content 'Jane: Rock'
    expect(page).to have_content 'Jane: Paper'
    expect(page).not_to have_content 'Jane: Scissors'
  end

  scenario ' - player 1 one clicks scissors' do
    game_sign_in
    click_button 'Scissors'
    expect(page).not_to have_content 'Jane: Rock'
    expect(page).not_to have_content 'Jane: Paper'
    expect(page).to have_content 'Jane: Scissors'
  end

  scenario '- players draw' do

    allow(GameLogic).to receive(:ai_selection).and_return('paper')

    game_sign_in
    click_button 'Paper'
    expect(page).to have_content 'The winner is: It is a Draw!'
  end
end
