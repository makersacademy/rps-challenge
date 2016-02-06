
feature 'Playing the game' do
  scenario "When I submit 'Rock' I am told if I have won" do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    visit '/'
    fill_in('player_one', with: 'S.Z.')
    click_button('play')
    click_button('rock')
    expect(page).to have_content "You Win!"
  end
end
