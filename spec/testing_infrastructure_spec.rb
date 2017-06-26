require 'spec_helper.rb'
describe " TEST 1 RPR" do
  feature "has options" do
    scenario "list of rock paper scissors for the user to choose from" do
        visit ('/')
      expect(page).to have_content 'Rock'
    end
  end
end

describe "TEST 2 RPR" do
  feature "form" do
    scenario "contains a form element for name entry" do
      visit ('/')
      expect(page).to have_content 'Gladiator'
    end
  end
end
#
# describe "TEST 3 RPR" do
#   feature "name pull through" do
#     scenario "contains global variable from form entry" do
#       visit ('/')
#       click_button
#        expect(page).to have_content 'example'
#     end
#   end
# end

# describe "Test 4 RPR" do
#   feature "display fight options" do
#     scenario "Click through and be presented with three options" do
#       visit('/')
#       click_button
#       expect(page).to have_content 'rock'
#     end
#   end
# end

describe "Test 5 RPS" do
  feature "click through weapon option" do
    scenario "Select rock and move to fight page" do
      visit ('/')
      click_button
      click_button 'Rock'
      expect(page).to have_content "Rock"
      expect(page).to have_content "VS"
      end
    end
  end

describe "Test 6 RPS" do
    feature "click through weapon option" do
      scenario "select paper and move to paper page" do
        visit ('/')
        click_button
        click_button "Paper"
        expect(page).to have_conent "Paper"
      end
    end
end

  # describe "Test 6 RPS" do
  #   feature "rock page has rock" do
  #     scenario "select rock and move to fight page"
  #
  #   end
  # end
