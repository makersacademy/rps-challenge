
feature 'Playing the game' do
  scenario "When I submit 'scissors' I am told if it's a draw" do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    visit '/'
    fill_in('player_one', with: 'S.Z.')
    click_button('play')
    click_button('scissors')
    expect(page).to have_content "It's a draw!"
  end
end
