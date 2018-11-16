feature 'enter name' do

  scenario 'front page has name field' do
    visit '/'
    expect(page).to have_field "name"
  end

  scenario 'enter name, click submit and see name on next page' do
    start_the_game
    expect(page).to have_content "Dana"
  end
end
