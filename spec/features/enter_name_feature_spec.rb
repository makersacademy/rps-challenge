feature 'A Player can enter their name and have it displayed back to them' do
  scenario 'A players name is displayed to them' do
    visit('/')
    fill_in :name_one, with: 'James'
    click_button 'Submit'
    expect(page).to have_content 'Player 1 is James'
  end


end