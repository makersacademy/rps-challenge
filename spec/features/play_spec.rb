# feature 'name shown on page' do
#   scenario 'submitting names' do
#     sign_in_and_play
#     expect(page).to have_content 'Shoto Todoroki'
#   end
# end

feature "choose weapon" do
  scenario "expect page to have button ROCK" do
    sign_in_and_play
    expect(page).to have_button "ROCK"
  end

  scenario "expect page to have button PAPER" do
    sign_in_and_play
    expect(page).to have_button "PAPER"
  end

  scenario "expect page to have button SCISSORS" do
    sign_in_and_play
    expect(page).to have_button "SCISSORS"
  end
end
