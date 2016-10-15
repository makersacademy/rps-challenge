feature 'Preparing to play' do

  scenario "Player is able to select 'rock' button" do
    visit('/play')
    find_button("Rock").visible?
  end

  scenario "Player is able to select 'paper' button" do
    visit('/play')
    find_button("Paper").visible?
  end

  scenario "Player is able to select 'scissors' button" do
    visit('/play')
    find_button("Scissors").visible?
  end

end
