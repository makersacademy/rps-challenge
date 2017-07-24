feature 'Playing vs. a computer' do
  scenario 'computer get an automatic name' do
    sign_in_and_play(true)
    expect(page).to have_content 'Name One vs. Computer'
  end
end
