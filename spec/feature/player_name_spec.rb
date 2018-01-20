feature 'Name player' do
  scenario 'user can input name' do
    visit('/')
    fill_in :player_name, with: 'test name'
    click_button 'submit'
    expect(page).to have_content 'Welcome test name!'
  end
end
