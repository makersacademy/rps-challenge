feature 'user enters their name' do
  scenario 'enter name to play game' do
    visit('/')
    fill_in :player_1_name, with: 'Alicia'
    click_button 'Submit'
    expect(page).to have_content 'Welcome Alicia'
  end
end
