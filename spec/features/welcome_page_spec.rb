describe 'Home page', type: :feature do
  before(:each) { visit('/') }
  it 'displays the welcome message' do
    expect(page).to have_content(Rochambeau::WELCOME)
  end

  it 'has a text box for users name - single player' do
    expect(page.has_xpath?('//form[@action="/new_single_player_game"]/input[@name="player_name"]')).to eq(true)
  end

  it 'has a button for starting a game - single_player' do
    expect(page.has_xpath?('.//form[@action="/new_single_player_game"]/button[@type="submit"]')).to eq(true)
  end

  it 'has a text box for users name - two player' do
    expect(page.has_xpath?('//form[@action="/new_two_player_game"]/input[@name="player_name"]')).to eq(true)
  end

  it 'has a text box for opponents name' do
    expect(page.has_xpath?('.//form[@action="/new_two_player_game"]/input[@name="opponent_name"]')).to eq(true)
  end

  it 'has a button for starting a game - two player' do
    expect(page.has_xpath?('.//form[@action="/new_two_player_game"]/button[@type="submit"]')).to eq(true)
  end

end
