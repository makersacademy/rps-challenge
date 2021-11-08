feature 'Show player move' do
  scenario 'After input show a confirmation of the players choice' do
    input_and_play
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock'
  end
end
