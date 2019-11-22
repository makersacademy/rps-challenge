feature 'Enter player name' do
  scenario 'Can submit player name and display onscreen' do
    visit('/')
    fill_in :player_name, with: 'Anh'
    click_button 'Enter'
    expect(page).to have_content 'Anh vs. Robot'
  end
end
