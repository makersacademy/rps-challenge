feature 'confirms multiplayer choices' do
  scenario 'shows choices of both players' do
    multi_sign_in
    multi_play_game
    expect(page).to have_content 'Player 1 chose: Paper'
    expect(page).to have_content 'Player 2 chose: Rock'
  end
end

feature 'can resolve a multiplayer match' do
  scenario 'player 1 can win' do
    multi_sign_in
    click_link 'Start Game'
    find('[name=Paper1]').click
    find('[name=Rock2]').click
    click_button 'See who won'
    expect(page).to have_content 'Player 1 wins!'
  end
  scenario 'player 2 can win' do
    multi_sign_in
    click_link 'Start Game'
    find('[name=Paper1]').click
    find('[name=Scissors2]').click
    click_button 'See who won'
    expect(page).to have_content 'Player 2 wins!'
  end
  scenario 'it can be a draw' do
    multi_sign_in
    click_link 'Start Game'
    find('[name=Paper1]').click
    find('[name=Paper2]').click
    click_button 'See who won'
    expect(page).to have_content 'It\'s a draw!'
  end
  scenario 'it can have no winner' do
    multi_sign_in
    click_link 'Start Game'
    find('[name=Paper1]').click
    click_button 'See who won'
    expect(page).to have_content 'No winner: you have to both choose!'
  end
end
