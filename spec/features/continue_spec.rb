feature 'Continuing a game after previous turn' do
  scenario 'return to play screen' do
    sign_in_and_play
    click_button 'Rock'
    click_button 'Continue?'
    expect(page).to have_content 'Current Player: Norm'
  end
end

