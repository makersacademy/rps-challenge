feature 'Announces winner' do

  
  scenario 'anounces whether the player or computer has won' do
    visit ('/')
    fill_in :player_name, with: 'Paul'
    click_button 'Submit'
    click_button 'PAPER'
    expect(page).to have_content("And the result is:")
  end

end