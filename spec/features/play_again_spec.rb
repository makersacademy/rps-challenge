feature 'Playing a new game' do
  scenario 'With the same players' do
    sign_in_and_play
    choose_and_check
    click_link 'Play another round'
    expect(page).to have_content 'Marketeer vs. Computer'
  end

  scenario 'With different players' do
    sign_in_and_play
    choose_and_check
    click_link 'Start a new game'
    expect(page).to have_content "Let's play Rock, Paper, Scissors!"
  end
end
