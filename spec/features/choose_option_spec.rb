feature 'player chooses between rock, paper and scissors' do
  scenario 'player picks either rock, paper or scissor button' do
    sign_in_and_play
    expect(page).to have_selector(:link_or_button, 'Rock')
    expect(page).to have_selector(:link_or_button, 'Paper')
    expect(page).to have_selector(:link_or_button, 'Scissors')
  end

  scenario 'display players move once button clicked' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content "Your move: Rock"
  end
end
