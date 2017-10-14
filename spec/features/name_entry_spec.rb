feature 'Name entry' do
  scenario 'user can enter name and see it displayed on the page' do
    visit '/'
    fill_in :name, with: 'Ed'
    click_button 'Start'
    expect(page).to have_content 'Player name: Ed'
  end
end
