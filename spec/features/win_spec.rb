feature 'win conditions' do
  scenario 'displays who won the round' do
    name_and_play
    srand(1)
    click_button "scissors"
    expect(page).to have_content "George wins!"
  end
end
