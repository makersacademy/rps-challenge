RSpec.feature 'draw_spec: Game is a draw:' do

  before do
    singlemode
    allow(Kernel).to receive(:rand).and_return(1)
    click_button("Paper")
  end

  scenario 'should have players choice' do
    expect(page).to have_content("player1's choice: Paper")
  end

  scenario 'should have computers choice' do
    expect(page).to have_content("Computer's choice: Paper")
  end

  scenario 'should have its a draw statement' do
    expect(page).to have_content("It's a draw!")
  end

end
