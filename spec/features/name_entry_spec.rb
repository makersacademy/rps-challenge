feature 'Enter player name' do
  scenario 'sunbmit name' do
    name_entry_and_play
    expect(page).to have_content 'name choose:'
  end
end
