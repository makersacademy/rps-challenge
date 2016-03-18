feature 'Play page' do

  scenario '0.0. Page displays name of player' do
    visit '/'
    fill_in('p1_name', with: 'Misa')
    click_button('Enter Game')
    visit '/play'
    expect(page).to have_content('Player 1: Misa')
  end
end
