feature 'playing the game' do
  before do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    sign_up_and_play
  end
  scenario 'when player selects rock, they are told they won' do
    choose('Rock')
    click_button('Submit')
    expect(page).to have_content('The Machine chose scissors...you won!')
  end
  scenario 'when player selects paper, they are told they lost' do
    choose('Paper')
    click_button('Submit')
    message = 'The Machine chose scissors...sorry, you lost.'
    expect(page).to have_content(message)
  end
  scenario 'when player selects scissors, they are told it is a draw' do
    choose('Scissors')
    click_button('Submit')
    expect(page).to have_content('The Machine also chose scissors...draw!')
  end
end
