feature 'a player can play a game of RPS' do
  scenario 'the opponent chooses rock and shows their choice' do
    register
    click_button :Rock
    expect(find("a[name='result']")).to have_content
  end
end
