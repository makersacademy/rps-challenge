require './spec/features/web_helpers'

feature 'Play' do
  xscenario 'Rock is checked by default' do
    allow(Kernel).to receive(:rand).and_return(0)
    sign_in
    choose_scissors
    expect(page).to have_content "The computer chose Rock"
  end

  xscenario 'You are told when you win' do
    allow(Kernel).to receive(:rand).and_return(1)
    sign_in
    choose_scissors
    expect(page).to have_content "You Win"
  end

  xscenario 'You are told when you tie' do
    allow(Kernel).to receive(:rand).and_return(2)
    sign_in
    choose_scissors
    expect(page).to have_content "You Tie"
  end

  xscenario 'You are told when you lose' do
    allow(Kernel).to receive(:rand).and_return(0)
    sign_in
    choose_scissors
    expect(page).to have_content "You Lose"
  end

  xscenario 'Your score is kept track of' do
    allow(Kernel).to receive(:rand).and_return(0)
    sign_in
    choose_scissors
    expect(page).to have_content "Losses: 1"
  end

  scenario 'You can play again' do
    sign_in
    choose_scissors
    click_button 'Play Again?'
    expect(page).to have_content 'Alex\'s turn'
  end

end
