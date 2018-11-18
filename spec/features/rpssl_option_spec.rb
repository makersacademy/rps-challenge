feature 'RPSSL option' do
  scenario 'rpssl given as option' do
    visit ('/')
    expect(page).to have_selector("input[type=submit][value='RPSSL']")
  end
end
