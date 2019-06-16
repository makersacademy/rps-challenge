# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'Play a round of RPS' do
  scenario 'choose Rock' do
    choose_rock

    expect(page).to have_content("You went with Rock")
  end

  scenario 'lose if computer chooses Paper' do
    allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
    choose_rock

    expect(page).to have_content("Computer chose Paper")
    expect(page).to have_content("You lose!")
  end

  scenario 'win if computer chooses Scissors' do
    allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
    choose_rock

    expect(page).to have_content("Computer chose Scissors")
    expect(page).to have_content("You win!")
  end

  scenario 'draw if computer chooses Rock' do
    allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
    choose_rock

    expect(page).to have_content("Computer chose Rock")
    expect(page).to have_content("It's a draw!")
  end
end
