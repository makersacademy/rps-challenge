# the marketeer can choose one option
feature 'Making choices' do
  scenario 'Make a choice from the options provided' do
    visit '/'
    fill_in :player_1_name, with: 'Arjun'
    click_button 'Submit'
    expect(page).to have_button 'rock'
  end
end
