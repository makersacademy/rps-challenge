feature 'Game is setup properly' do
  scenario 'Player can enter their name' do
    visit '/'
    fill_in('Name:', with: 'Mama')
    click_button("Let's Play")
    expect(page).to have_content('Mama')
  end
end

feature 'As a player I can enter my name and pick a move' do
  scenario 'Player enters their name chooses to play rock' do
    visit '/'
    fill_in('Name:', with: 'Mama')
    click_button("Let's Play")
    click_button("Rock")
    expect(page).to have_content('Mama', 'Rock')
  end
end

feature 'As a player I can play Rock, Paper, Scissors against a computer' do
  scenario 'Player picks Rock and the Ai Scissors. Player shall win' do
    srand(888)
    visit '/'
    fill_in('Name:', with: 'Mama')
    click_button("Let's Play")
    click_button("Rock")
    expect(page).to have_content('The winner is Mama', 'Scissors')
  end
end

feature 'As a player I can play Rock, Paper, Scissors against a computer' do
  scenario 'Player picks Rock and the Ai Paper. Ai shall win' do
    srand(555)
    visit '/'
    fill_in('Name:', with: 'Mama')
    click_button("Let's Play")
    click_button("Rock")
    expect(page).to have_content('The winner is Mama', 'Paper')
  end
end

feature 'As a player I can play Rock, Paper, Scissors against a computer' do
  scenario 'Player picks Rock and the Ai Rock. Game will be a tie' do
    srand(666)
    visit '/'
    fill_in('Name:', with: 'Mama')
    click_button("Let's Play")
    click_button("Rock")
    expect(page).to have_content('Tie', 'Rock')
  end
end
