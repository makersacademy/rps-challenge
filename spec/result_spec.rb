feature 'it displays game results' do

  before :each do
    srand(4)
  end

  let(:player1) { double(:player, name: "Alan") }
  let(:player2) { double(:player, name: "Babs") }

  it 'displays users choice' do
    sign_in_and_play
    choose_rock
    expect(page).to have_content 'Rock'
  end

  it 'displays computers choice' do
    sign_in_and_play
    choose_rock
    allow(player2).to receive(:choose_random).and_return("Scissors")
    expect(page).to have_content 'Computer chose Scissors!'
  end

  it 'displays winner messager' do
    sign_in_and_play
    choose_rock
    allow(player2).to receive(:choose_random).and_return("Scissors")
    expect(page).to have_content "Albert wins!"
  end

  it 'displays draw message' do
    sign_in_and_play
    choose('choice', option: 'Scissors')
    click_on('Submit choice')
    allow(player2).to receive(:choose_random).and_return("Scissors")
    expect(page).to have_content "It's a draw!"
  end
end
