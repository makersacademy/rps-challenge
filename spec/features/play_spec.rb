feature 'Playing the game' do

  before do 
    sign_in
  end
  scenario 'player can choose rock' do
    click_button('rock')

    expect(page).to have_content("You have chosen Rock")
  end

  scenario 'player can choose paper' do
    click_button('paper')

    expect(page).to have_content("You have chosen Paper")
  end

  scenario 'player can choose scissors' do
    click_button('scissors')

    expect(page).to have_content("You have chosen Scissors")
  end
end
