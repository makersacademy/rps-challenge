feature 'Enter name' do
  scenario 'Submiting your name' do
    vist ('/')
    fill_in :player_1_name, with: 'Adam'
    click_button 'Submit'
    expect(page).to have_content 'Adam dares to challenge the AI!'
  end
end
