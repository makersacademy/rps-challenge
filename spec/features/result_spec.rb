feature 'Result' do
  scenario 'If choices are the same tie' do
    allow_any_instance_of(AutomatedOpponent).to receive(:automated_choice).and_return('Paper')
    put_name_and_choice_paper
    expect(page).to have_content 'You tie!'
  end

  scenario 'Player wins' do
    allow_any_instance_of(AutomatedOpponent).to receive(:automated_choice).and_return('Rock')
    put_name_and_choice_paper
    expect(page).to have_content 'You win!'
  end

  scenario 'Player loses' do
    allow_any_instance_of(AutomatedOpponent).to receive(:automated_choice).and_return('Scissors')
    put_name_and_choice_paper
    expect(page).to have_content 'You lose!'
  end
end
