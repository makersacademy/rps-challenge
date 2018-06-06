feature "computer move" do
  before do
    allow(Computer::DEFAULT_MOVES).to receive(:sample) { 'Paper' }
  end
  scenario "computer 'Rock' move is displayed" do
    register_to_play
    click_link('Rock')
    expect(page).to have_content "Mr Rosso has choosen: Paper"
  end
  scenario "computer 'Paper' move is displayed" do
    register_to_play
    click_link('Paper')
    expect(page).to have_content "Mr Rosso has choosen: Paper"
  end
  scenario "computer 'Scissors' move is displayed" do
    register_to_play
    click_link('Scissors')
    expect(page).to have_content "Mr Rosso has choosen: Paper"
  end
end
