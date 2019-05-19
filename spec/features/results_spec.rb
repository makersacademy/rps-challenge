require './lib/computer'

feature "results" do
  scenario "it tells the user what they chose" do
    sign_in_and_play
    click_button("rock")
    expect(page).to have_content "Sam chose rock"
  end
  scenario "it tells user what the computer chose" do
    srand(100)
    sign_in_and_play
    click_button("rock")
    expect(page).to have_content "Computer chose rock!!"
  end
  scenario "it tells user if they have won, drawn or lost" do
    srand(569592)
    sign_in_and_play
    click_button("rock")
    expect(page).to have_content "You beat the computer!"
  end
end

#need more tests here about computer choosing randomly and page letting you know whether youve won, lost or drawn
