feature 'picks a move' do
  scenario 'picks rock' do
    allow_any_instance_of(Cpu).to receive(:choice).and_return(:scissors)
    sign_in
    click_button 'Rock'
    expect(page).to have_content 'Bob Wins'
  end

  scenario 'picks paper' do
    allow_any_instance_of(Cpu).to receive(:choice).and_return(:scissors)
    sign_in
    click_button 'Paper'
    expect(page).to have_content 'CPU Wins'
  end

  scenario 'picks scissors' do
    allow_any_instance_of(Cpu).to receive(:choice).and_return(:scissors)
    sign_in
    click_button 'Scissors'
    expect(page).to have_content 'Draw'
  end
end
