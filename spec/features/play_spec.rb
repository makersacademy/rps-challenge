feature 'Play displays whether you win or lose' do
  scenario 'Tommy plays a lizard and wins' do
    sign_in
    allow(@game).to receive(:bot_selection).and_return(:spock)
    choose('gesture', option: 'lizard')
    click_button('Play')
    expect(page).to have_content('You win!')
  end
end
