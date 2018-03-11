feature "after signing in, you choose RPS" do
  def choose_rps(attack)
     choose(attack)
     click_button "Attack your opponent"
     expect(page).to have_content("Reena choose #{attack}")
  end

  background do
    sign_in_and_play
  end

feature 'Choose RPS' do
  scenario 'Choosing Rock' do
    choose_rps("Rock")
  end
end

  scenario 'Rock is default' do
    click_button "Attack your opponent"
    expect(page).to have_content "Reena choose Rock"
  end

  scenario 'Choosing Paper' do
    choose_rps("Paper")
  end

  scenario 'Choosing Scissors' do
    choose_rps("Scissors")
  end
end
