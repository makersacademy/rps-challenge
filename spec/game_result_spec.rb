=begin
feature 'plays game' do
  scenario 'player chooses a move' do
    visit('/')
    fill_in :player_name, with: 'Mark'
    click_button 'Submit'
    choose('Rock')
    click_button 'Play Game'
    expect(page).to have_content('You chose Rock')
  end
end
=end
