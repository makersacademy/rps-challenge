feature 'choose a move' do
  scenario 'player can choose the move Rock' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Fred played Rock'
  end
  scenario 'player can choose the move Scissors' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content 'Fred played Scissors'
  end
  scenario 'player can choose the move Paper' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content 'Fred played Paper'
  end
end
