feature 'Enter name' do
  scenario 'submit name' do
    visit('/')
    fill_in :player_name, with: 'Mario'
    click_button 'Play!'
    expect(page).to have_content('Mario vs Computer!')
  end
end
