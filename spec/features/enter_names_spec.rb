
feature 'Enter name' do
  scenario 'User enters name' do
    visit ('/')
    fill_in 'player_name', with: 'Florence'
    click_button 'Play'
    expect(page).to have_content 'Florence'
  end 
end 