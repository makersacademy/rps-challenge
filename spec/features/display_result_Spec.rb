feature 'Playing the game' do
  scenario "When I submit 'Rock' I am told if I have won" do
    allow_any_instance_of(Computer).to receive(:choice).and_return(:scissors)
    visit '/'
    fill_in('player_1_name', with: 'Mengchen')
    select('rock')
    click_button('Play!')
    expect(page).to have_content "You won!"
  end

  scenario "When I submit 'Rock' I am told if I have draw" do
    allow_any_instance_of(Computer).to receive(:choice).and_return(:rock)
    visit '/'
    fill_in('player_1_name', with: 'Mengchen')
    select('rock')
    click_button('Play!')
    expect(page).to have_content "You drew!"
  end

  scenario "When I submit 'Rock' I am told if I have lost" do
    allow_any_instance_of(Computer).to receive(:choice).and_return(:paper)
    visit '/'
    fill_in('player_1_name', with: 'Mengchen')
    select('rock')
    click_button('Play!')
    expect(page).to have_content "You lost!"
  end
end
