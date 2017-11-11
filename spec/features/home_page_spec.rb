feature 'Testing home page' do
  scenario 'display player name after submission' do
    visit('/')
    fill_in(:Player_name, :with => 'Jo')
    click_button 'Play'
    expect(page).to have_content 'Jo'
  end

end
