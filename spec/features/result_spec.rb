require './spec/features/web_helpers'

feature 'Play' do
  scenario 'Rock is checked by default' do
    allow_any_instance_of(Kernel).to receive(:rand).and_return(0)
    sign_in
    choose_scissors
    expect(page).to have_content "The computer chose Rock"
  end

  scenario 'You are told when you win' do
    allow_any_instance_of(Kernel).to receive(:rand).and_return(1)
    sign_in
    choose_scissors
    expect(page).to have_content "You Win"
  end

  scenario 'You are told when you tie' do
    allow_any_instance_of(Kernel).to receive(:rand).and_return(2)
    sign_in
    choose_scissors
    expect(page).to have_content "You Tie"
  end

  scenario 'You are told when you lose' do
    allow_any_instance_of(Kernel).to receive(:rand).and_return(0)
    sign_in
    choose_scissors
    expect(page).to have_content "You Lose"
  end

  scenario 'Your score is kept track of' do
    allow_any_instance_of(Kernel).to receive(:rand).and_return(0)
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
