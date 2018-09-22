feature "Game page" do
  scenario "has 3 options: rock, paper, scissors" do
    enter_name_and_play
    choose('paper')
  end
end
