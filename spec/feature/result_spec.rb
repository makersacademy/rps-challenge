# feature 'outcome' do
#   scenario 'gives the winner of the match' do
#     allow_any_instance_of(Computer).to receive(:move).and_return("Rock")
#     sign_in_and_play
#     click_button "Paper"
#     expect(page).to have_content "Leo won"
#   end
# end
