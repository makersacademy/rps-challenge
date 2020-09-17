feature 'Enter your name' do
  scenario 'player enter name into form' do
    visit('/')
    fill_in :player_name, with: 'Bob'
    click_button 'I am ready to play!'
    expect(page).to have_content 'Bob vs. Computer'
  end
end

