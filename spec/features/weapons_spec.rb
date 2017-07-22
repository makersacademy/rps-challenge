feature 'weapons' do
  scenario 'user can input a weapon' do
    visit('/')
    fill_in :player_1_name, with: 'Bob'
    click_button 'Submit'
    fill_in :weapon, with: 'Rock'
    click_button 'Submit'
    expect(page).to have_content 'Bob chooses Rock'
  end
end
