feature 'Enter names' do
  scenario 'can submit name and see it in play page' do
    sign_in_and_play
    expect(page).to have_content 'Jon'
  end
end

feature 'Shows playing buttons' do
  scenario 'shows rock button' do
    sign_in_and_play
    expect(page).to have_selector(:link_or_button, 'ROCK')
  end
  scenario 'shows paper button' do
    sign_in_and_play
    expect(page).to have_selector(:link_or_button, 'PAPER')
  end
  scenario 'shows scissors button' do
    sign_in_and_play
    expect(page).to have_selector(:link_or_button, 'SCISSORS')
  end
end

feature 'Shows Turns' do
  scenario 'shows the name of the current turn player' do
    sign_in_and_play
    expect(page).to have_content 'Jon\'s turn'
  end
end

feature 'Feedback Messages' do
  before do
    sign_in_and_play
    allow(Player::ELEMENTS).to receive(:sample).and_return('scissors')
    click_button('ROCK')
  end
  scenario 'shows the choice of player1' do
    msg = 'Jon chose rock'
    expect(page).to have_content msg
  end
  scenario 'shows the choice of player2' do
    msg = 'Computer chose scissors'
    expect(page).to have_content msg
  end
  scenario 'shows the winner name' do
    msg = 'Jon wins the game'
    expect(page).to have_content msg
  end
end
