feature 'Enter name' do
  scenario 'submit name to show name and  start playing game' do
    register_and_play
    expect(page).to have_content("Han choose wisely")
  end
end
