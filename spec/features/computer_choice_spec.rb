feature 'Computer choice' do

  let(:game) { Game.new(Player.new('Luke')) }
   
  scenario 'computer makes a choice' do
    allow(Game).to receive(:instance) { game }
    allow(Game).to receive(:create) { game } 
    allow(game.computer_choices).to receive(:sample) {"Paper"}
    name_entered
    click_button 'Rock'
    expect(page).to have_content 'Computer chose Paper!'
  end
end
