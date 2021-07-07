feature 'One player' do
  scenario 'Can select to have one player' do
    visit('/')
    click_button 'One player'
    expect(page).to have_content 'One player game'
  end
end
