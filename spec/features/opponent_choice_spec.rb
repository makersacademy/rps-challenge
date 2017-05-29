feature "Opponent's choice" do
  scenario 'is selected and displayed after Player has selected his choice' do
    sign_in_and_play
    allow(Game.instance.players[1]).to receive(:choose_random_weapon).and_return(:paper)
    click_button('rock')
    expect(page).to have_content('Opponent has selected paper')
  end
end
