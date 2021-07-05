feature 'So that name can be seen in lights' do
  scenario 'Register name' do
    visit '/'
    fill_in :player_name, with: 'player'
    click_button 'Submit'
    expect(page).to have_content 'Welcome to Rock, Paper, Scissors, player'
  end
end
