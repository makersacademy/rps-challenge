feature "User Story 2 - Playing Roshamb - Part 1: choose your weapon." do
  scenario "after choosing to play should be able to choose rock" do
    named_player
    expect(page).to have_content('Rock, an ancient but powerful weapon.')
  end
  scenario "after choosing to play should be able to choose paper" do
    named_player
    expect(page).to have_content('Paper, the stuff history books are made of.')
  end
  scenario "after choosing to play should be able to choose scissors" do
    named_player
    expect(page).to have_content('Scissors, sharp yet fragile.')
  end
end
