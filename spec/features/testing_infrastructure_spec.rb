require_relative 'web_helper'

feature "Testing index" do
  scenario "Can run app and check page content" do
    visit('/')
    expect(page).to have_content "Welcome to Rock, Paper, Scissors!"
  end

  scenario "Can run app and check page content" do
    visit('/')
    expect(page).to have_content "Sign in to play"
  end
end

  feature "Testing play" do
    scenario "Expect player name to be displayed in play" do
      sign_in_and_play
      expect(page).to have_content "Welcome Connie" # Display content.
      end

    feature "Testing rock" do
      scenario "Expect player option to be displayed in rock" do
        sign_in_and_play
        visit('/rock')
        expect(page).to have_content "Connie chose rock" # Display content.
        end
      end

      feature "Testing paper" do
        scenario "Expect player option to be displayed in paper" do
          sign_in_and_play
          visit('/paper')
          expect(page).to have_content "Connie chose paper" # Display content.
          end
        end

        feature "Testing rock" do
          scenario "Expect player option to be displayed in scissors" do
            sign_in_and_play
            visit('/scissors')
            expect(page).to have_content "Connie chose scissors" # Display content.
            end
          end
        end


# Add button
# Add link
