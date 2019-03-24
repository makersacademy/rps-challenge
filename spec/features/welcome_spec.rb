feature 'Welcome' do
  scenario 'Says the players name back to them after entry' do
    visit('/')
    fill_in 'p1name', with: 'Suzy'
    click_on "Submit"
    expect(page).to have_content "Welcome Suzy!!! Have a shiney light!!!"
  end
end
