feature 'it displays game results' do
  before :each do
    srand(4)
  end
  it 'displays users choice' do
    sign_in_and_play
    choose('choice', option: 'Rock')
    click_on('Submit choice')
    expect(page).to have_content 'Rock'
  end

  it 'displays computers choice' do
    sign_in_and_play
    choose('choice', option: 'Rock')
    click_on('Submit choice')
    player2 = Player.new("Computer")
    allow(player2).to receive(:choose_random).and_return("Scissors")
    expect(page).to have_content 'Computer chose Scissors!'
  end
end
