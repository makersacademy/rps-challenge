feature 'Entering a move' do
  scenario 'Player enters a move: rock, paper or scissors' do
    visit '/'
    fill_in :name, with: 'Dhara'
    click_button 'Submit'
    fill_in :move, with: 'rock'
    click_button 'Submit'
    expect(page).to have_content 'Your move is... rock'
  end
end
