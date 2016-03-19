RSpec.feature 'winner_page: Shows winner or draw' do

  scenario '1. should have players choice' do
    sign_in_and_play
    click_button("Rock")
    expect(page).to have_content("Your choice: Rock")
  end

  before do
    allow(Kernel).to receive(:rand).and_return(1)
  end

  scenario '2. should have computers choice' do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(1)
    click_button("Rock")
    expect(page).to have_content("Computer\'s choice: Paper")
  end

  scenario '3. should have who wins' do
    sign_in_and_play
    click_button("Rock")
    expect(page).to have_content("Computer wins!")
  end

end
