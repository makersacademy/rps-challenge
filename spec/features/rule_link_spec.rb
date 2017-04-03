feature 'Rules' do
  scenario 'There is a link to the rules' do
    visit ('/')
    expect(page).to have_selector("a[href='https://en.wikipedia.org/wiki/Rock%E2%80%93paper%E2%80%93scissors#Adapted_rules']")
  end
end
