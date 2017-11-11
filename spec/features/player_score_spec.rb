feature 'viewing player score' do
  scenario 'player should start with 0 points' do
    visit('/')
    fill_in(:Player_name, :with => 'Jo')
    click_button 'Play'
    expect(page).to have_content 'Score : 0'
  end
end
