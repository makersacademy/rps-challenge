feature 'Can submit player name' do
  scenario 'check to submit player name' do
    visit('/')
    fill_in :player_name, with: 'James'
    click_button 'Lets Play!'
    expect(page).to have_content 'Player: James'
  end
end
