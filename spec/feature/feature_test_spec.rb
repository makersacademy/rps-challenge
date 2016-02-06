feature 'Adding name' do
  scenario 'A player can add his name' do
    visit("/")
    fill_in("player", with: 'Alex')
    click_button("submit")
    expect(page).to have_content('Welcome Alex')
  end
end

feature 'Selecting R-P-S' do
  scenario 'A player selects r-p-s' do
    visit("/")
    fill_in("player", with: 'Alex')
    click_button("submit")
    choose('rps', :match => :first)
    click_button("submit")
    expect(page).to have_content('Alex (rock)')
  end
end
