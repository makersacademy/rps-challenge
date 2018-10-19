feature 'enter players name' do
  scenario 'enter two players and display battle screen' do
    sign_in_and_play
    expect(page).to have_content "Todd vs James"
  end
end
