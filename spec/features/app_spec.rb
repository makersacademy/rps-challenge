feature "testing" do
  scenario "content of the page" do
    visit('/')
    expect(page).to have_content "Rock Paper Scissor"
  end

   scenario "player choose an option rock" do
     sign_in
     expect(page).to have_content('ROCK')
   end

   scenario "player choose an option paper" do
     sign_in
     expect(page).to have_content('PAPER')
   end

   scenario "player choose an option scissor" do
     sign_in
     expect(page).to have_content('SCISSOR')
   end
end
