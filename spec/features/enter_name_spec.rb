feature 'Enter name' do
  scenario 'User enters name' do
    visit('/')
    fill_in :player_1_name, with: 'Morgan'
    click_button 'Submit'
    expect(page).to have_content 'Morgan is playing Rock, Paper, Scissors!'
  end
end
