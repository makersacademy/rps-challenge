feature 'Game outcome' do

  before :each do
    sign_in_and_play
  end

  scenario "Player is able to see that they have won" do
    visit('/play')
    click_button "rock"
    visit('/select')
    visit('/win')
  end

  scenario "Player is able to see that they have lost" do
    visit('/play')
    click_button "rock"
    visit('/select')
    visit('/lose')
  end

  scenario "Player is able to see that the game was a draw" do
    visit('/play')
    click_button "rock"
    visit('/select')
    visit('/draw')
  end
end
