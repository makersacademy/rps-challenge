feature 'result of game' do
  scenario 'user makes weapon choice' do
    sign_in_and_select_rock
    expect(page).to have_content "You chose rock!"
  end

  scenario 'computer makes a weapon choice' do
    allow_any_instance_of(ComputerPlayer).to receive(:weapon).and_return(:paper)
    sign_in_and_select_rock
    expect(page).to have_content 'The computer chose paper'
  end
end
