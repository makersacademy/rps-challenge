feature 'choice' do
  scenario 'player chooses rock' do
    visit '/'
    fill_in 'player_one', with: 'Ayelisha'
    fill_in 'player_two', with: 'Elliott'
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content "You chose Rock"
  end
end
