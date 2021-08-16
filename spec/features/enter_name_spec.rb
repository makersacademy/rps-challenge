feature 'enter name' do
  scenario 'greets player and prints name' do
    sign_in_and_play

    expect(page).to have_content 'Hi Gandalf! Please make a move'
  end
end
