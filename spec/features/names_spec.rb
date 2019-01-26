feature 'Player Names' do
  scenario '1. Players can enter their names' do
    visit '/'
    fill_in :player_name, with: 'Neville'
    click_button 'Submit'
    expect(page).to have_content 'Welcome to the game, Neville.'
  end
end
