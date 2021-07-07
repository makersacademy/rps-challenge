feature 'Multiplayer' do
  scenario 'Can select to have two players' do
    visit('/')
    click_button 'Two players'
    expect(page).to have_content 'Two player game'
  end
end
