feature RockPaperScissors do
  scenario 'expect player submitted name to be displayed' do
    sign_in
    expect(page).to have_text "Hello Sergei!"
  end
end
