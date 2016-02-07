feature 'can play against Sheldon' do
  scenario 'can win against Sheldon' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:spock)
    sign_in_and_play_sheldon
    click_button('Lizzard')
    expect(page).to have_content 'Player1 wins!'
  end

  scenario 'can lose against Sheldon' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    sign_in_and_play_sheldon
    click_button('Lizzard')
    expect(page).to have_content 'Sheldon wins!'
  end

  scenario 'can draw against Sheldon' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:lizzard)
    sign_in_and_play_sheldon
    click_button('Lizzard')
    expect(page).to have_content "It's a draw..."
  end

end
