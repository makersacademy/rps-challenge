feature 'player chooses option' do
  scenario 'player picks either rock, paper or scissor button' do
    sign_in_and_play
    expect(page).to have_selector(:button, 'Rock')
    expect(page).to have_selector(:button, 'Paper')
    expect(page).to have_selector(:button, 'Scissors')
  end

  scenario 'display players move once button clicked' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content "Your move: Rock"
  end
end
