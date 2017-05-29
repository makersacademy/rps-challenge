feature 'Declare Winner' do
  it 'should declare a winner based on the rules of Rock Paper Scissors' do
    sign_in_and_play
    allow(Game.instance.players[1]).to receive(:choice).and_return(:paper)
    click_button('rock')
    expect(page).to have_content('The winner is: computer opponent')
  end
end
