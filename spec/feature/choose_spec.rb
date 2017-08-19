feature 'Choosing rock, paper, sissors' do
  scenario 'has a button rock' do
    visit('/')
    find_button('ROCK!').click
    expect(page).to have_selector("button[type=button]")
  end
end
