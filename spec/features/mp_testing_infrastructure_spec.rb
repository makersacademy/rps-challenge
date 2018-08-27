feature 'single or multiplayer confirmation' do
  scenario 'single player' do
    visit('/')
    click_button 'Single Player'
    expect(page).to have_content 'You have selected single player mode'
  end
  scenario 'multiplayer' do
    visit('/')
    click_button 'Multiplayer'
    expect(page).to have_content 'You have selected multiplayer mode'
  end
end

feature 'mp name form' do
  scenario 'welcomes names from form' do
    visit('/')
    click_button 'Multiplayer'
    fill_in :player1, with: 'samir'
    fill_in :player2, with: 'jess'
    click_button 'Enter Game'
    expect(page).to have_content 'Welcome samir!'
    expect(page).to have_content 'Welcome jess!'
  end
end

feature 'Confirms mp RPS choices' do
  scenario 'Confirms that players chose paper and rock' do
    visit('/')
    click_button 'Multiplayer'
    fill_in :player1, with: 'samir'
    fill_in :player2, with: 'jess'
    click_button 'Enter Game'
    click_link 'Start Game'
    click_button 'Paper1'
    click_button 'Rock1'
    click_button 'See who won'
    expect(page).to have_content 'Player 1 chose: Paper'
    expect(page).to have_content 'Player 1 chose: Rock'
  end
end
#
# feature 'can resolve a match' do
#   before do
#     srand(3)
#   end
#   scenario 'can lose a game' do
#     single_sign_in
#     click_button 'Paper'
#     expect(page).to have_content "You lose!"
#   end
#   scenario 'can win a game' do
#     single_sign_in
#     click_button 'Rock'
#     expect(page).to have_content "You win!"
#   end
#   scenario 'can draw a game when choices match' do
#     single_sign_in
#     click_button 'Scissors'
#     expect(page).to have_content "It's a draw!"
#   end
# end
