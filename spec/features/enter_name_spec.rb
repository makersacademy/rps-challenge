feature 'enter name' do
  scenario 'greets player and prints name' do
    sign_in_and_play
    save_and_open_page

    expect(page).to have_content 'Hi Gandalf! Please make a move'
  end
end
