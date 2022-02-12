feature 'Enter player 1 name' do
  scenario 'Submitting player 1 name' do
    visit '/'
    fill_in :player_1_name, with: 'Kelly'
    click_button 'Submit'
    expect(page).to have_content 'Kelly vs. the computer'
  end
end
