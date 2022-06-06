feature 'Enter Names' do
  scenario 'Submit player 1 name and displays it on the following page' do
    sign_in_and_play
    expect(page).to have_content("SH vs. Computer")
  end
end