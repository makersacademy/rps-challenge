feature '#Features' do

  scenario 'Should expect players to fill in names' do
    sign_in_and_play
    expect(page).to have_text('Bob vs. Computer')
  end

  scenario 'Should expect there to be a draw' do
    stub_sample(:rock)
    sign_in_and_play
    select_radio_button('rock')
    expect(page).to have_text('draw')
  end

  scenario 'Should expect Bob to be the winner' do
    stub_sample(:scissors)
    sign_in_and_play
    select_radio_button('rock')
    expect(page).to have_text('Bob wins')
  end

  scenario 'Should expect Computer to be the winner' do
    stub_sample(:paper)
    sign_in_and_play
    select_radio_button('rock')
    expect(page).to have_text('Computer wins')
  end

end
