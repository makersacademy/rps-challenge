describe 'Single player Game', type: :feature do
  before(:each) { start_single_player }

  it 'says who\s turn it is' do
    expect(page).to have_content("Dave's Turn")
  end

  it 'asks to pick a move' do
    expect(page).to have_content("Pick your move")
  end

  it 'can submit a move' do
    expect(page.has_xpath?('.//form[@action="/new_two_player_game"]/button[@type="submit"]')).to eq(true)
  end

end
