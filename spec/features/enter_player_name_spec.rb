feature 'Player has a name' do
  scenario 'can enter a name and see it on the page' do
    visit('/')
    fill_in('player_name', with: 'p1')
    click_button('Submit')
    expect(page).to have_content('p1')
  end
end
