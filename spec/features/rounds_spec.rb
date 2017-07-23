feature 'the game lasts a determined number of rounds' do

  scenario 'number of rounds is displayed' do
    sign_in
    expect(page).to have_content 'Round: 1'
  end
end
