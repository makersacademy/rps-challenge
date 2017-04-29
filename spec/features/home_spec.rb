feature 'home-page' do
  scenario 'allows player to enter name' do
    visit('/')
    fill_in('player', with: 'Filipe')
    click_button('Play!')
    expect(page).to have_content('Choose your weapon, Filipe!')
  end
end
