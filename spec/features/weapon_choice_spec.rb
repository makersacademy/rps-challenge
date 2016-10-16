require 'spec_helper'

feature "it displays the palyer's weapon choice" do

scenario 'the player chooses Rock' do
  sign_in_and_play
  choose "Rock"
  click_button "Make your Choice"
  expect(page).to have_content "Batman chose Rock!"
end

scenario 'the player chooses Paper' do
  sign_in_and_play
  choose "Paper"
  click_button "Make your Choice"
  expect(page).to have_content "Batman chose Paper!"
end

scenario 'the player chooses Scissors' do
  sign_in_and_play
  choose "Scissors"
  click_button "Make your Choice"
  expect(page).to have_content "Batman chose Scissors!"
end

# scenario 'it displays Jigsaws weapon choice' do
#   sign_in_and_play
#   allow(Kernel).to receive(:rand).and_return(1)
#   choose "Scissors"
#   click_button "Make your Choice"
#   expect(page).to have_content "Jigsaw chose Paper"
# end
#
# scenario 'it displays if the player has won' do
#   sign_in_and_play
#   allow(Kernel).to receive(:rand).and_return(1)
#   choose "Scissors"
#   click_button "Make your Choice"
#   expect(page).to have_content "you win"
# end

end
