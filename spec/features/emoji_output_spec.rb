feature 'Emoji output' do
  scenario 'Will display a tie emoji if tie' do
    allow_any_instance_of(AutomatedOpponent).to receive(:automated_choice).and_return('Paper 📄')
    put_name_and_choice_paper
    expect(page).to have_content '👔'
  end

  scenario 'Will display a confetti emoji if win' do
    allow_any_instance_of(AutomatedOpponent).to receive(:automated_choice).and_return('Rock 🤘')
    put_name_and_choice_paper
    expect(page).to have_content '🎉'
  end

  scenario 'Will display a skull if lose' do
    allow_any_instance_of(AutomatedOpponent).to receive(:automated_choice).and_return('Scissors ✂️')
    put_name_and_choice_paper
    expect(page).to have_content '☠️'
  end
end
