
feature 'Playing the game' do
  scenario "When I submit 'Paper' I am told if I have lost" do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    visit '/'
    fill_in('player_one', with: 'S.Z.')
    click_button('play')
    click_button('rock')
    expect(page).to have_content "You Lose!"
  end
end
