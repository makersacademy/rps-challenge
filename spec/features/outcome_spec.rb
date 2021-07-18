feature 'it should declare the result' do
  let(:game) { Game.new(Player.new('Luke')) }
  scenario 'annouces the result player wins' do
    allow(Game).to receive(:instance) { game }
    allow(Game).to receive(:create) { game } 
    allow(game.computer_choices).to receive(:sample) {"Scissors"}
    name_entered
    click_button 'Rock'
    expect(page).to have_content 'Luke wins!'
  end

  scenario 'annouces the result of a draw' do
    allow(Game).to receive(:instance) { game }
    allow(Game).to receive(:create) { game } 
    allow(game.computer_choices).to receive(:sample) {"Rock"}
    name_entered
    click_button 'Rock'
    expect(page).to have_content 'It\'s a draw!'
  end 

  scenario 'annouces the result computer wins' do
    allow(Game).to receive(:instance) { game }
    allow(Game).to receive(:create) { game } 
    allow(game.computer_choices).to receive(:sample) {"Paper"}
    name_entered
    click_button 'Rock'
    expect(page).to have_content 'Computer wins!'
  end
end