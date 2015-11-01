feature 'winning a game' do
  scenario 'player picks rock and computer picks scissors' do
    sign_in_and_play
    click_button('rock')
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    expect(page).to have_content 'Congratulations you won!'
  end
end
