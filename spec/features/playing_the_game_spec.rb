# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'Playing the game' do
  let(:player_1) { double :player }

  scenario "When I submit 'Rock' I am told if I have won" do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    sign_in_and_play
    fill_in :choice, with: 'Rock'
    click_button 'Submit'
    allow(player_1).to receive(:sample).and_return('Paper')
    click_link('here')
    expect(page).to have_content "wins"
  end
end
