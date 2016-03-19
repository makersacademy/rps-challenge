
feature 'Enter name' do
  scenario 'Player can enter name' do
    visit('/')
    fill_in :player_name, with: 'Claudia'
    click_button 'submit'
    expect(page).to have_content('Claudia vs. Computer')
  end
end
