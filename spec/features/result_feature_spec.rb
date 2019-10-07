feature 'results of game' do
  scenario 'human wins, comptuer loses' do
    allow_any_instance_of(ComputerPlayer).to receive(:choose_weapon).and_return('rock')
    sign_in_and_select_paper
    expect(page).to have_content 'Congratulations...you won!'
  end

  scenario 'computer wins, human loses' do
    allow_any_instance_of(ComputerPlayer).to receive(:choose_weapon).and_return('scissor')
    sign_in_and_select_paper
    expect(page).to have_content 'Sorry...you lost!'
  end

  scenario 'human and computer select same weapon, draw' do
    allow_any_instance_of(ComputerPlayer).to receive(:choose_weapon).and_return('scissor')
    sign_in_and_select_scissor
    expect(page).to have_content "That's a draw!"
  end
end
