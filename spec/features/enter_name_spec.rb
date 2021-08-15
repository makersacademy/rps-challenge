feature 'entering a name' do
  scenario 'takes a name' do
    sign_in_and_play
    expect(page).to have_content 'Emile'
  end
end
