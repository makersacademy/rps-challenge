feature 'throwdown' do
  let(:player_name){ double :player_name}
  let(:weapon){ double :weapon}
  let(:game){Game.new(weapon)}
  scenario 'should return string to confirm choice' do
    sign_in_and_play
    click_button('Rock')
    allow(game).to receive(:weapon2).with "Rock"
    expect(page).to have_content 'Joe throws Rock. Computer throws Rock'
  end
end
