require './app'

feature 'results are displayed' do
  scenario 'player 1 wins the game' do
    visit '/'
    fill_in('player_name', with: 'Patrick')
    click_on 'Start Game!'
    click_on 'rock'
    expect(page).to have_content "Winner: Patrick"
  end

  scenario 'player 2 wins the game' do
    visit '/'
    fill_in('player_name', with: 'Patrick')
    click_on 'Start Game!'
    click_on 'paper'
    expect(page).to have_content "Winner: Computer"
  end

  scenario 'draw' do
    visit '/'
    fill_in('player_name', with: 'Patrick')
    click_on 'Start Game!'
    click_on 'scissors'
    expect(page).to have_content "It's a draw!"
  end

end
