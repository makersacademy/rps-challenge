
feature 'Losing' do
  scenario 'losing a round single player' do
    sign_in_and_play
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    choose('rock')
    click_button('Fight!')
    expect(page).to have_content 'Arnold lost!'
    expect(page).to have_content 'CPU won!'
  end

  scenario 'losing a round multiplayer' do
    sign_in_and_play_multiplayer
    choose('rock')
    click_button('Fight!')
    choose('paper')
    click_button('Fight!')
    expect(page).to have_content 'Arnold lost!'
    expect(page).to have_content 'Abram won!'
  end
end
