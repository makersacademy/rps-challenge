feature 'winning' do

  scenario 'the computer can win a game' do
    allow(Game::WEAPONS).to receive(:keys).and_return(['Paper'])
    sign_in_and_choose_computer
    click_button('Rock')
    click_button('Continue')
    expect(page).to have_content('Paper beats Rock, Computer has won!')
  end

  scenario 'the computer can lose a game' do
    allow(Game::WEAPONS).to receive(:keys).and_return(['Paper'])
    sign_in_and_choose_computer
    click_button('Lizard')
    click_button('Continue')
    expect(page).to have_content('Lizard beats Paper, Emma has won!')
  end

  scenario 'player and computer can draw a game' do
    allow(Game::WEAPONS).to receive(:keys).and_return(['Paper'])
    sign_in_and_choose_computer
    click_button('Paper')
    click_button('Continue')
    expect(page).to have_content("It's a draw, you both chose Paper")
  end

end
