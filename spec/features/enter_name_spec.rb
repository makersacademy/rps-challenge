feature 'User Entry', type: :feature do
  let(:player1) { 'Gon Freecs' }
  let(:player2) { 'Darth Vadar' }
  scenario 'Users enter page displays the name' do
    visit '/'
    click_link 'register'
    fill_in 'player1', with: player1
    click_button 'Submit'
    expect(page).to have_content("#{player1}")
    expect(page).to have_content("#{player2}")
    expect(page).to have_content('Choose your weapon')
  end
end
