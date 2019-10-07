# the marketeer can choose one option
feature 'Player' do
  scenario 'player 1 makes a choice from the options provided' do
    visit '/'
    fill_in :player_1_name, with: 'Arjun'
    click_button 'Submit'
    expect(page).to have_button 'rock'
  end
end
