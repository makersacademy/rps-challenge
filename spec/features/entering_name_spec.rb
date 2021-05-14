feature 'Entering name to play' do
  scenario 'displaying players name' do
    sign_in_and_play
    # save_and_open_page
    expect(page).to have_content 'Bob'
  end
end