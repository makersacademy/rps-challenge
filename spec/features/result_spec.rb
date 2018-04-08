feature 'result shown' do
  scenario 'Can see the player\'s move on screen' do
    sign_in_and_play
    fill_in 'choice', with: 'rock'
    click_button 'Go!'
    click_button 'Proceed'
    expect(page).to have_content 'Player move: rock'
  end
end
