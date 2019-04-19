feature 'Enter Name' do
  scenario 'register' do
    visit('/')
    fill_in('player_name', with: 'Pikachu')
    click_button('Submit')
    expect(page).to have_content 'Pikachu'
  end
end
