feature 'Preparing to play' do

  before :each do
    sign_in_and_play
  end


  scenario "Player is able to select 'rock' button" do
    visit('/play')
    find_button("rock").visible?
  end

  scenario "Player is able to select 'paper' button" do
    visit('/play')
    find_button("paper").visible?
  end

  scenario "Player is able to select 'scissors' button" do
    visit('/play')
    find_button("scissors").visible?
  end

end
