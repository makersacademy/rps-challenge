feature 'display selection' do
  scenario 'it displays the computer_player\'s selection' do
    visit('/result')
    subject = Computer.new
    subject.computer_choice
    expect(["Rock", "Paper", "Scissors"]).to include subject.computer_choice
  end
end
