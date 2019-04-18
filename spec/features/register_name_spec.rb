feature 'So that name can be seen in lights' do
  scenario 'Register name before playing' do
    visit('/')
    fill_in :player_1_name, with: 'player1'
    click_button 'Submit'
    expect(page).to have_content 'Rock, paper or scissors?'
  end
end
