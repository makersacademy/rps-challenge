feature 'Match can show results' do
  let(:match) { double(:match, player_one_move => 'rock', player_two_move => 'scissors') }
  before { fill_name_and_submit }

  scenario 'player picks rock and sees result' do
    click_on 'Rock'
    expect(page).to have_content 'Rock beats Scissors. You win!'
  end
end