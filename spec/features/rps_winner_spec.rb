feature 'Show the winner' do
  scenario 'once both players have played, declare the winner' do
    allow_any_instance_of(ComputerChoice).to receive(:get_choice).and_return("Rock")
    visit('/')
    fill_in :player_name, with: "Joe"
    click_button "Submit"
    fill_in :player_choice, with: "Paper"
    click_button "Submit"
    expect(page).to have_content "The result: win"
  end
end

feature 'Show the winner' do
  scenario 'once both players have played, declare the winner' do
    allow_any_instance_of(ComputerChoice).to receive(:get_choice).and_return("Scissors")
    visit('/')
    fill_in :player_name, with: "Joe"
    click_button "Submit"
    fill_in :player_choice, with: "Paper"
    click_button "Submit"
    expect(page).to have_content "The result: lose"
  end
end

feature 'Show a draw' do
  scenario 'when both players have played the same, declare a draw' do
    allow_any_instance_of(ComputerChoice).to receive(:get_choice).and_return("Scissors")
    visit('/')
    fill_in :player_name, with: "Joe"
    click_button "Submit"
    fill_in :player_choice, with: "Scissors"
    click_button "Submit"
    expect(page).to have_content "The result: draw"
  end
end