feature 'User Registry', type: :feature do
  let(:player_name) { 'Gon Freecs' }
  scenario 'Users enter names and page displays the names' do
    visit '/'
    fill_in 'username', with: player_name
    click_button 'Start'
    expect(page).to have_content("Welcome #{player_name}!")
    expect(page).to have_content('Jajanken')
  end
end
