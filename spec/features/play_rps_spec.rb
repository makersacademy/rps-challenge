feature 'Play RPS' do
  scenario 'presented with a choice of RPS' do
    visit('/')
    fill_in('player_name', with: 'Rick')
    click_button('Submit')
    expect(page).to have_content('Rock')
    expect(page).to have_content('Paper')
    expect(page).to have_content('Scissors')
  end
end
