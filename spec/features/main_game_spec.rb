describe 'able to play RPS' do
  let(:computer_choice) { 'rock' }

  scenario 'can make a choice' do
    get_to_game
    fill_in :choice, with: 'rock'
    expect(page).to have_content "rock VS #{computer_choice}"
  end
end