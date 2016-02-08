
feature 'Draw' do
  scenario 'draw round single player' do
    sign_in_and_play
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    choose('rock')
    click_button('Fight!')
    expect(page).to have_content "It's a draw!"
  end

  scenario 'draw round multiplayer' do
    sign_in_and_play_multiplayer
    choose('rock')
    click_button('Fight!')
    choose('rock')
    click_button('Fight!')
    expect(page).to have_content "It's a draw!"
  end
end
