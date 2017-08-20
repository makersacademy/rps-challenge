require_relative '../../app.rb'

RSpec.feature "Home page", type: :feature do
	 scenario "intro text" do
 		 visit "/"
 		 expect(page).to have_content "ROCK PAPER SCISSORS"
 	end
end

feature "Enter names" do
	 scenario "submitting names" do
 		 sign_in_and_play
 		 expect(page).to have_content "Panda, are you ready to play?\nMake your choice!"
 	end
end

feature "Game asset" do
	 scenario "when player chooses rock" do
 		 sign_in_and_play
 		 click_button "Rock"
 		 expect(page).to have_content "Panda, your choice is ROCK!"
 	end

	 scenario "when player chooses paper" do
 		 sign_in_and_play
 		 click_button "Paper"
 		 expect(page).to have_content "Panda, your choice is PAPER!"
 	end

	 scenario "when player chooses scissors" do
 		 sign_in_and_play
 		 click_button "Scissors"
 		 expect(page).to have_content "Panda, your choice is SCISSORS!"
 	end

end
