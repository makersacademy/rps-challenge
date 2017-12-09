feature 'win conditions' do
  scenario 'displays who won the round' do
    name_and_play
    srand(1)
    click_button "scissors"
    expect(page).to have_content "George wins!"
  end
  scenario 'displays draw if both pick the same' do
    name_and_play
    srand(3)
    click_button "scissors"
    expect(page).to have_content "Draw!"
  end
end
