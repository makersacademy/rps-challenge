RSpec.feature "Rsp" do

  scenario "User fills register their name before playing" do
    sign_in_and_click_submit
    expect( page ).to have_content("Hello, Player_name! Take a deep deep breath Don't think too much Just follow your instinct Now choose one of them!")
  end

  before( :each ) do
    allow_any_instance_of( Computer ).to receive(:pick).and_return('scissors')
  end

  scenario "User see 'win' when they choose rock and computer choose scissors" do
    sign_in_and_click_submit
    click_button 'rock'
    expect( page ).to have_content("Player_name's choice RPS Master's choice vs You beat the master! Try Again! Home")
  end

  scenario "User see 'lose' when they choose paper and computer choose scissors" do
    sign_in_and_click_submit
    click_button 'paper'
    expect( page ).to have_content("Player_name's choice RPS Master's choice vs YOU LOSE... Try Again! Hom")
  end

  scenario "User see 'even' when they choose scissors and computer choose scissors" do
    sign_in_and_click_submit
    click_button 'scissors'
    expect( page ).to have_content("Player_name's choice RPS Master's choice vs EVEN! Try Again! Home")
  end

end
