
feature 'User can enter name and start game' do
  scenario 'Can enter name and see name on game page' do
    visit('/')
    fill_in :name, with: "Arthur"
    click_button "Play"
    expect(page).to have_content "Arthur"
  end
end