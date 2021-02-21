feature 'play' do
  scenario 'player selects a move' do
    allow_any_instance_of(Computer).to receive(:move).and_return(:rock)
    visit('/')
    fill_in :name, with: 'Hannah'
    click_button "Submit"
    fill_in("move", with: 'Scissors')
    click_button "Submit"
    save_and_open_page
    expect(page).to have_content "Computer chose rock – you lose!"
  end
end
