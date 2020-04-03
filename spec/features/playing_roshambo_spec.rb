feature "User Story 2 - Playing Roshambo" do
  scenario "after choosing to play should be able to choose rock" do
    named_player
    expect(page).to have_button('Rock!')
  end
  scenario "after choosing to play should be able to choose paper" do
    named_player
    expect(page).to have_button('Paper!')
  end
  scenario "after choosing to play should be able to choose scissors" do
    named_player
    expect(page).to have_button('Scissors!')
  end
end
