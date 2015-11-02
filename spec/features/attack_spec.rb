feature 'Attack' do
  scenario 'Player wins' do
    allow(Weapons::WEAPONS).to receive(:sample).and_return(:scisors)
    register_and_play
    click_button('Rock')
    expect(page).to have_content 'Rob wins!'
  end
  scenario 'Player looses' do
    allow(Weapons::WEAPONS).to receive(:sample).and_return(:scissors)
    register_and_play
    click_button('Paper')
    expect(page).to have_content 'Rob looses!'
  end
  scenario 'Player draws' do
    allow(Weapons::WEAPONS).to receive(:sample).and_return(:scissors)
    register_and_play
    click_button('Scissors')
    expect(page).to have_content 'Rob draws!'
  end
end
