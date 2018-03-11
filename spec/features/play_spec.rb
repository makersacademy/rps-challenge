feature 'Testing if we divert to play after entering name' do
  scenario 'enter name and click play' do
    visit('/')
    fill_in(:name, with: 'Adam')
    click_button('Play')
    expect(page).to have_content('Here we play the game')
  end
end
