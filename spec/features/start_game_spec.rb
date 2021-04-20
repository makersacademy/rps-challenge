feature 'start game' do
  scenario 'allow to play a game' do
    sign_in_and_play
    expect(page).to have_button("rock")
    expect(page).to have_button('paper')
    expect(page).to have_button('scissors')
    expect(page).to have_button('lizard')
    expect(page).to have_button('spock')
  end

  scenario 'it should show the winner' do
    sign_in_and_play
    allow_any_instance_of(Array).to receive(:sample) { :scissors }
    click_button('rock')
    expect(page).to have_content 'You are the winner'
  end
end
