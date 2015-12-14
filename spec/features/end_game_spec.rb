feature 'Feedback Messages' do
  before do
    sign_in_and_play_alone
    allow(Element::ELEMENTS).to receive(:sample).and_return(:scissors)
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

feature 'Shows play again buttons' do
  before do
    sign_in_and_play_alone
    click_button('ROCK')
  end
  scenario 'shows the play the same game button' do
    expect(page).to have_selector(:link_or_button, 'PLAY THE SAME GAME')
  end
  scenario 'shows the play another game button' do
    expect(page).to have_selector(:link_or_button, 'PLAY ANOTHER GAME')
  end
end

feature 'Clicking play the same game' do
  before do
    sign_in_and_play_in_two
    click_button('ROCK')
    click_button('ROCK')
    click_button('PLAY THE SAME GAME')
  end
  scenario 'shows the player 1 name again' do
    expect(page).to have_content 'Jon'
  end
  scenario 'shows the player 2 name again' do
    expect(page).to have_content 'Giamir'
  end
end
