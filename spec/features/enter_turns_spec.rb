feature 'player can enter turns' do
  let(:player_turn) { double(:player_turn) }
  subject(:game) { Game.new(player_turn) }

  before do
    enter_name_and_play
  end

  scenario 'player can select an option and submit it' do
    choose(option: 'rock')
    click_button('Submit')
    expect(page).to have_content('You chose: Rock')
  end
end
