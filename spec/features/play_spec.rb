feature 'Testing if we divert to play after entering name' do
  scenario 'enter name and click play' do
    sign_in_and_play
    expect(page).to have_content("Welcome Adam Let's play some Rock Paper Scissors")
  end
end
