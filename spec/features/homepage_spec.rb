feature do
  scenario 'Testing page is there' do
    visit('/')
    expect(page).to have_content('Game Options')
  end
end

feature do
  scenario 'Testing page is there' do
    visit('/')
    expect(page).to have_selector(:link_or_button, "Play!")
  end
end

feature do
  scenario 'Testing page is there' do
    visit('/')
    expect(page).to have_selector(:link_or_button, "PvP!")
  end
end
