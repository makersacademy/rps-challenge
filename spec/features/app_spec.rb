RSpec.feature "Rsp" do

  scenario "User fills register their name before playing" do
    sign_in_and_click_submit
    expect( page ).to have_content("Hello, Player_name! Take a deep deep breath Don't think too much Just follow your instinct Now choose one of them!")
  end

  scenario "User see 'rock' when they choose rock" do
    sign_in_and_click_submit
    click_button 'rock'
    expect( page ).to have_content("rock")
  end

  scenario "User see 'paper' when they choose paper" do
    sign_in_and_click_submit
    click_button 'paper'
    expect( page ).to have_content("paper")
  end

  scenario "User see 'scissors' when they choose scissors" do
    sign_in_and_click_submit
    click_button 'scissors'
    expect( page ).to have_content("scissors")
  end

end
