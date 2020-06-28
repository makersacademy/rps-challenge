feature 'play rps' do
  before do 
    sign_in_and_play
  end
  scenario 'visit page, enter name, see 3 buttons for rock paper and scissors on screen' do
    expect(page).to have_button("Rock")
  end
  scenario 'visit page, enter name, see 3 buttons for rock paper and scissors on screen' do
    expect(page).to have_button("Paper")
  end
  scenario 'visit page, enter name, see 3 buttons for rock paper and scissors on screen' do
    expect(page).to have_button("Scissors")
  end
end
