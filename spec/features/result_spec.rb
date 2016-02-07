feature 'prints the result' do
  scenario 'you win' do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content 'You Win'
  end

  scenario 'you lose' do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content 'You Lose'
  end
end
