feature 'name page' do
  scenario 'entering a name' do
    visit('/')
    click_link('Play')
    expect(page).to have_text('Enter name')
    expect(page).to have_field('name')
  end
end
