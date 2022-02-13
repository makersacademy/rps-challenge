# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'Play a game of rock, paper, scissors' do
  before do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    sign_in_and_play
  end
  
  scenario 'player selects rock' do
    click_button("Rock")
    expect(page).to have_content("Win")
  end
  
  scenario 'player selects paper' do
    click_button("Paper")
    expect(page).to have_content("Lose")
  end
  
  scenario 'player selects scissors' do
    click_button("Scissors")
    expect(page).to have_content("Draw")
  end
end
