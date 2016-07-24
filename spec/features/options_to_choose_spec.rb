require 'web_helpers'
feature "single-player mode" do
  scenario "player chooses single-player mode" do
    visit '/'
    click_button "single_player"
    expect(page).to have_content("Please enter your name")
  end
  scenario "player sees his three options" do
    single_mode_sign_in_and_play
    expect(page).to have_content("Please choose one: Rock Scissor Paper")
  end
  scenario "player chooses rock" do
    single_mode_sign_in_and_play
    click_button "rock"
    expect(page).to have_content("Samed chose rock")
  end
  scenario "computer chooses randomly" do
    single_mode_sign_in_and_play
    click_button "Rock"
    expect(page).to satisfy {|page| page.has_content?("Computer chose: rock") or page.has_content?("Computer chose: scissor") or page.has_content?("Computer chose: paper")}
  end

  scenario "shows who won" do
    single_mode_sign_in_and_play
    click_button "rock"
    expect(page).to satisfy {|page| page.has_content?("Computer won!") or page.has_content?("Samed won!") or page.has_content?("Draw")}
  end
end

feature "mutli-player mode" do
  scenario "player chooses mutliplayer mode" do
    visit '/'
    click_button "multi_player"
    expect(page).to have_content("Please enter your names")
  end

  scenario "names are typed in and player 1 has to select an option" do
    multi_mode_sign_in_and_play
    expect(page).to have_content("Rock Scissor Paper")
  end

  scenario "player 1 selected rock now it is player 2 turns" do
    multi_mode_sign_in_and_play
    click_button "rock"
    expect(page).to have_content("Samed please look away so that Tom can choose")
  end

  scenario "player 2 selected paper" do
    multi_mode_sign_in_and_play
    click_button "rock"
    click_button "paper"
    expect(page).to have_content("Tom won!")
  end 
end
