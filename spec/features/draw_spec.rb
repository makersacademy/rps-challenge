RSpec.feature 'draw_spec: Game is a draw:' do

  before do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(1)
    click_button("Paper")
  end

  scenario '1. should have players choice' do
    expect(page).to have_content("Your choice: Paper")
  end

  scenario '2. should have computers choice' do
    expect(page).to have_content("Computer\'s choice: Paper")
  end

  scenario '3. should have its a draw statement' do
    expect(page).to have_content("It\'s a draw!")
  end

end
