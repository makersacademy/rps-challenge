feature 'Enter names' do
  scenario 'Registering names' do
    visit('/')
    fill_in :player_1, with: 'Tinda'
    click_button 'Register'

    expect(page).to have_content 'It is Tinda vs. The Machine'
  end

end