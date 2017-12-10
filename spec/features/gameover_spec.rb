feature 'gameover' do
  scenario 'displays player_1 won if won' do
    sign_in_and_submit
    click_on "Rock"
    click_on "Scissors"
    expect(page).to have_content("James wins")
  end
  scenario 'displays draw if no winner' do
    sign_in_and_submit
    click_on "Rock"
    click_on "Rock"
    expect(page).to have_content("Draw")
  end
  scenario 'displays player_2 won if won' do
    sign_in_and_submit
    click_on "Rock"
    click_on "Paper"
    expect(page).to have_content("Mary wins")
  end
end
