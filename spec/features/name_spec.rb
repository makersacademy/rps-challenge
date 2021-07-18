feature 'allows user to enter name' do
  scenario 'user passes name' do
    visit('/')
    fill_in :player, with: 'Will'
    click_button 'Submit' 
    expect(page).to have_content 'Hi Will!'
  end
end
