feature 'keeps track of scores' do
  scenario 'player 1 wins round' do
    play_single
    choose(option: "Rock")
    allow_any_instance_of(Computer).to receive(:weapon).and_return('Scissors')
    click_button('Play')
    click_button('Next Round')
    expect(page).to have_content '1-0'
  end

  scenario 'player 2 wins round' do
    play_single
    choose(option: "Rock")
    allow_any_instance_of(Computer).to receive(:weapon).and_return('Paper')
    click_button('Play')
    click_button('Next Round')
    expect(page).to have_content '0-1'
  end
end
