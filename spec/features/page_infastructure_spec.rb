feature 'page_infrastructure' do

  scenario 'lands on the splash page on start up' do
    visit('/')
    expect(page).to have_content "Rock, Paper, Scissors"
    #expect page.has_title?("my title")).to eq(true)
    #expect(page.has_xpath?('/').to eq(true)
  end

  scenario 'player 1 signs in and enters name and is then taken to play page' do
    DEFAULT_PLAYER_NAME = 'Nick'
    visit('/')
    fill_in('player_1_name', :with => DEFAULT_PLAYER_NAME)
    click_button('Play')
    expect(page).to have_content('Play')
    expect(page).to have_content "#{DEFAULT_PLAYER_NAME}"
  end

end
