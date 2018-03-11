feature 'Testing if we divert to play after entering name' do

  scenario 'Sign in and click play to see if it displays the page header' do
    sign_in_and_play
    expect(page).to have_content "Rock Paper Scissors Makers Academy, Week 3
    (Weekend assignment) Irfan Durrani, Feb '18 Cohort"
  end

  scenario 'enter name and click play' do
    sign_in_and_play
    expect(page).to have_content("Welcome Adam Let's play some Rock Paper Scissors")
  end
end
