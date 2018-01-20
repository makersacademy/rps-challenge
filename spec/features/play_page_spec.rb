feature 'Main game page' do
  before do
    submit_name
  end

  scenario 'Displays the player name' do
    expect(page).to have_content 'Player, choose your attack:'
  end

  scenario 'Displays attack options' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end
end
