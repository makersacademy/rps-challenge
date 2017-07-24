feature 'FEATURE: score tracking' do
  # todo: dry up this spec
  before do
    single_sign_in_and_submit
    srand(3) # computer will always pick scissors
  end

  scenario 'score is increased by 1 when player wins' do
    choose("weapon", option: "rock")
    click_button 'ATTACK ATTACK!!!'
    click_button 'AGAIN AGAIN!!!'
    expect(page).to have_content "Spock: 1 | Computer: 0"
  end

  scenario "computer's score is increased by 1 when player wins"  do
    choose("weapon", option: "paper")
    click_button 'ATTACK ATTACK!!!'
    click_button 'AGAIN AGAIN!!!'
    expect(page).to have_content "Spock: 0 | Computer: 1"
  end

  scenario 'score is unchanged after a draw' do
    choose("weapon", option: "scissors")
    click_button 'ATTACK ATTACK!!!'
    click_button 'AGAIN AGAIN!!!'
    expect(page).to have_content "Spock: 0 | Computer: 0"
  end
end
