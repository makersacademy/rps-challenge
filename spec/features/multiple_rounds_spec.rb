feature 'multiple rounds' do
  before :each do
    sign_in_and_play
    srand(67809)
  end
  scenario 'play 10 rounds' do
    10.times { play_round }
    expect(page).to have_text('Rounds: 10')
  end
end
