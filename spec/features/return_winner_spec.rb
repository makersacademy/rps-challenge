feature 'Returns winner' do
  let(:choice) { 'Rock' }
  scenario "returns the user's input" do
    intro_steps
    choose(choice)
    click_button "Submit"
    expect(page).to have_content("Your choice is: #{choice}")
  end

  scenario "returns the random output from computer" do
    allow_any_instance_of(Game).to receive(:randomizer).and_return("Scissors")
    test
    expect(page).to have_content("The computer's choice is: Scissors")
  end

  scenario 'returns the outcome' do
    allow_any_instance_of(Game).to receive(:randomizer).and_return("Rock")
    test
    expect(page).to have_content("You win!")
  end
end
