describe 'Action page' do
  scenario "after selecting weapon we are taken to 'action' page" do
    sign_in_and_play
    click_button "I was born ready"
    click_button "Feeling pretty good about myself right now"
    expect(page).to have_content "Action!"
  end

  scenario "displays both players' names" do
    sign_in_and_play
    click_button "I was born ready"
    click_button "Feeling pretty good about myself right now"
    expect(page).to have_content "Jonny"
  end

=begin
  scenario "displays player_1's chosen weapon" do
    sign_in_and_play
    click_button "I was born ready"
    click_button "Feeling pretty good about myself right now"
    # Player chooses weapon
    allow(subject).to receive(:stormy?).and_return(false)
    expect(page).to have_content "Paper"
  end
=end

end
