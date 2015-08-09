require 'spec_helper'

feature 'Two player mode game' do

  before do
    in_browser(:chrome) do
      visit '/registration'
      fill_in 'name', :with => 'Giuseppe'
      click_button "Submit"
      click_link "Two Player Mode"
    end
  end

  scenario 'First user should wait for the other user to register' do
    in_browser(:chrome) do
      expect(page).to have_content("Please wait for the other player...")
    end
  end
  context 'second player joins' do
    before do
      in_browser(:safari) do
        visit '/registration'
        fill_in 'name', :with => 'Mario'
        click_button "Submit"
        click_link "Two Player Mode"
      end
    end

    scenario 'First user should now be on the play-match-double page' do
      in_browser(:chrome) do
        expect(current_path).to eq('/play-match-double')
      end
    end

    scenario 'Second user should also now be on the play-match-double page' do
      in_browser(:safari) do
        expect(current_path).to eq('/play-match-double')
      end
    end
    # scenario 'User two can be created' do
    #   in_browser(:safari) do
    #     visit '/registration'
    #     fill_in 'name', :with => 'Mario'
    #     click_button "Submit"
    #     expect(page).to have_content "Hello Mario, you will play against Giuseppe"
    #   end
    # end
  end

end

def in_browser(name)
  old_session           = Capybara.session_name
  Capybara.session_name = name
  yield
  Capybara.session_name = old_session
end