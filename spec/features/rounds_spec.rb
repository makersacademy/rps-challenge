feature 'the game lasts a determined number of rounds' do

  scenario 'number of rounds defaults to three' do
    sign_in
    expect(page).to have_content 'Rounds: 3'
  end
end
