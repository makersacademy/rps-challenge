feature RockPaperScissors do
  scenario 'expect player submitted name to be displayed' do
    visit ('/')
    fill_in("name", with: "Sergei")
    click_button ('Submit')
    expect(page).to have_text "Hello Sergei!"
  end
end