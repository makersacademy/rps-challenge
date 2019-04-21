feature 'move select' do
  subject (:x) {ComputerMove.new}
  scenario 'player chooses a move and it is saved' do
    visit('/')
    fill_in('name', with: 'Jake')
    click_on('Submit!')
    fill_in('player_move', with: 'Rock')
    click_on('Submit!')
    expect(page).to have_content('You selected Rock')
  end


#mocking with capybara???
  scenario 'random computer move is selected and output' do
    visit('/')
    fill_in('name', with: 'Jake')
    click_on('Submit!')
    fill_in('player_move', with: 'Rock')
    click_on('Submit!')
    allow(x).to receive(:random_move).and_return('Paper')
    expect(page).to have_content('The computer selected Paper')
  end
end
