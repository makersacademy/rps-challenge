feature 'enter names' do
  scenario 'the user enters their name' do
    sign_in_and_play
    expect(page).to have_content("Welcome Richard")
  end
end
