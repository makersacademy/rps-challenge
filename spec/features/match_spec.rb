
feature 'confirms single player choices' do
  scenario 'shows choice of player' do
    single_sign_in
    click_link 'Start Game'
    click_button 'Paper'
    expect(page).to have_content 'You have chosen: Paper'
  end
  scenario 'shows choice of AI' do
    single_sign_in
    click_link 'Start Game'
    srand(3)
    click_button 'Paper'
    expect(page).to have_content 'The opponent chose: Scissors'
  end
end

feature 'can resolve a single player match' do
  before do
    srand(3)
  end
  scenario 'player can win a game' do
    single_sign_in
    click_link 'Start Game'
    click_button 'Rock'
    expect(page).to have_content "Player 1 wins!"
  end
  scenario 'player can lose a game' do
    single_sign_in
    click_link 'Start Game'
    click_button 'Paper'
    expect(page).to have_content "Player 2 wins!"
  end
  scenario 'player can draw a game' do
    single_sign_in
    click_link 'Start Game'
    click_button 'Scissors'
    expect(page).to have_content "It's a draw!"
  end
end
