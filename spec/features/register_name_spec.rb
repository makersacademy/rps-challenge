feature 'name entry field and submit button' do

  scenario "user accesses homepage" do
    visit('/')
    expect(page).to have_content("please enter your name:")
  end

  scenario "allows user to enter and submit name" do
    ready_to_play
    expect(page).to have_content('welcome Dave')
  end

end