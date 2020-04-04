feature 'Enter player 1 name' do
  scenario 'submitting name' do
    visit '/'
    fill_in :player_1_name, with: 'Adam F'
    click_button 'Submit'
    expect(page).to have_content 'Adam F vs Computer'
  end
end
