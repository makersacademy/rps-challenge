
feature 'Play game' do
  scenario '1. win' do
    allow(Kernel).to receive(:rand).and_return(2)
    start_game
    click_button('scissors')
    expect(page).to have_content("Pink Lady has won!")
  end

  scenario '1. loose' do
    allow(Kernel).to receive(:rand).and_return(1)
    start_game
    click_button('scissors')
    expect(page).to have_content("SKYNET has won!")
  end

  scenario '3. tie' do
    allow(Kernel).to receive(:rand).and_return(3)
    start_game
    click_button('scissors')
    expect(page).to have_content("TIE")
  end
end