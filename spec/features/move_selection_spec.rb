feature 'player move select' do
  scenario 'player chooses a move and it is saved' do
    visit('/')
    fill_in('name', with: 'Jake')
    click_on('Submit!')
    fill_in('player_move', with: 'Rock')
    expect(page).to have_content('You selected Rock')
  end
end
