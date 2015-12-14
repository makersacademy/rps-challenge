feature 'allows 2 players to sign in' do
  scenario 'shows players names on game screen' do
    multi_player
    expect(page).to have_content('Player 1 vs. Player 2')
  end
end

feature '2 players can choose Rock, Paper or Scissors' do
  scenario 'Player 2 Win: player 1 chooses rock & player 2 chooses paper' do
    multi_player
    select "Rock", :from => "p1choose"
    select "Paper", :from => "p2choose"
    click_button('Go!')
    expect(page).to have_content('Player 2 WINS!')
  end
  scenario 'Player 1 Win: player 1 chooses scissors & player 2 paper' do
    multi_player
    select "Scissors", :from => "p1choose"
    select "Paper", :from => "p2choose"
    click_button('Go!')
    expect(page).to have_content('Player 1 WINS!')
  end
  scenario 'Draw: player 1 chooses rock & player 2 chooses rock' do
    multi_player
    select "Paper", :from => "p1choose"
    select "Paper", :from => "p2choose"
    click_button('Go!')
    expect(page).to have_content('ITS A DRAW!')
  end
end

feature 'Shows the score between players' do
  scenario 'If Player 1 wins, his score goes up by 1 point' do
    multi_player
    select "Scissors", :from => "p1choose"
    select "Paper", :from => "p2choose"
    click_button('Go!')
    expect(page).to have_content('1 : 0')
  end
  scenario 'If Player 2 wins, his score goes up by 1 point' do
    multi_player
    select "Scissors", :from => "p1choose"
    select "Rock", :from => "p2choose"
    click_button('Go!')
    expect(page).to have_content('0 : 1')
  end
  scenario 'If players draw, both get 1 point' do
    multi_player
    select "Paper", :from => "p1choose"
    select "Paper", :from => "p2choose"
    click_button('Go!')
    expect(page).to have_content('1 : 1')
  end
end
