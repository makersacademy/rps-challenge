# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'Play a round of RPS' do
  scenario 'choose Rock' do
    choose_rock

    expect(page).to have_content("Rocky went with Rock")
  end

  let(:computer) { double :player }

  scenario 'lose if computer chooses Paper' do
    allow(computer).to receive(:move).and_return("Paper")
    choose_rock
    computer.move

    expect(page).to have_content("Computer chose Paper")
    expect(page).to have_content("You lose!")
  end
end
