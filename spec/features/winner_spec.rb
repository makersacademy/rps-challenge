feature 'Declaring the winner' do
  scenario 'A player has 5 points' do
    sign_in_and_play
    expect(page).to have_content 'Ed is the champion!'
    expect(page).to have_button 'Play a new game'
  end
end
