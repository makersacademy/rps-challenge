feature 'Play game' do
  scenario 'player chooses a move and gets a win screen' do
    allow_any_instance_of(Array).to receive(:sample) { :Scissors }
    enter_name_and_play
    expect(page).to have_content 'You win!'
  end

  scenario "page shows the player's and the computer's move" do
    allow_any_instance_of(Array).to receive(:sample) { :Scissors }
    enter_name_and_play
    expect(page).to have_content 'You picked Rock'
    expect(page).to have_content 'The computer picked Scissors'
  end
end
