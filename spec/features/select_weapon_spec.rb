feature "FEATURE: select weapon" do

  scenario "select ROCK option" do
    sign_in_and_play
    find_button "rock"
  end

  scenario "select PAPER option" do
    sign_in_and_play
    find_button "paper"
  end

  scenario "select SCISSORS option" do
    sign_in_and_play
    find_button "scissors"    
  end

end
