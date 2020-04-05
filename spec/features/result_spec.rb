feature 'Results, Winner or Draw' do
  scenario 'If Dave and comp choose rock it will be a draw' do
    allow_any_instance_of(Comp).to receive(:choice).and_return 'Rock'
    dave_sign_in
    click_button('Rock')
    expect(page).to have_content 'Draw'
  end

  scenario 'If Dave chooses rock and comp chooses paper, comp wins' do
    allow_any_instance_of(Comp).to receive(:choice).and_return 'Paper'
    dave_sign_in
    click_button('Rock')
    expect(page).to_not have_content 'Draw'
    expect(page).to have_content 'Computer wins'
  end
  
  scenario 'If Dave chooses rock and comp chooses scissors, Dave wins' do
    allow_any_instance_of(Comp).to receive(:choice).and_return 'Scissors'
    dave_sign_in
    click_button('Rock')
    expect(page).to_not have_content 'Draw'
    expect(page).to have_content 'Dave wins'
  end

  scenario 'If Dave chooses Lizard and comp chooses Spock, Dave wins' do
    allow_any_instance_of(Comp).to receive(:choice).and_return 'Spock'
    dave_sign_in
    click_button('Lizard')
    expect(page).to_not have_content 'Draw'
    expect(page).to have_content 'Dave wins'
  end
end
