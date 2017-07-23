feature 'FEATURE: see result of a round of rock-paper-scissors against the computer' do
  before do
    single_sign_in_and_submit
    srand(3) # computer will always pick scissors
  end

  scenario 'player has chosen a winning weapon' do
    choose("weapon", option: "rock")
    click_button 'Fight!'
    expect(page).to have_content "SPOCK WINS!!!"
  end

  scenario 'player has chosen a losing weapon' do
    choose("weapon", option: "paper")
    click_button 'Fight!'
    expect(page).to have_content "COMPUTER WINS!!!"
  end

  scenario 'both players have chosen the same weapon' do
    choose("weapon", option: "scissors")
    click_button 'Fight!'
    expect(page).to have_content "IT'S A DRAW!!!"
  end
end
