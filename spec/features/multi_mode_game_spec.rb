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
  context 'Second player joins' do
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

    scenario 'First user is recognized when playing a match' do
      in_browser(:chrome) do
        expect(page).to have_content "Ok, Giuseppe"
      end
    end

    scenario 'Second user is recognized when playing a match' do
      in_browser(:safari) do
        expect(page).to have_content "Ok, Mario"
      end
    end

    scenario 'First user should be in the waiting area two' do
      in_browser(:chrome) do
        click_button "Play"
        expect(current_path).to eq '/waitingarea-two'
      end
    end

    scenario 'Second user should now be in the waiting area two' do
      in_browser(:safari) do
        click_button "Play"
        expect(current_path).to eq '/waitingarea-two'
      end
    end

    context 'When both users make a move, the match result is shown' do
      before do
        in_browser(:safari) do
          click_button "Play"
        end
        in_browser(:chrome) do
          click_button "Play"
        end
      end
      scenario 'to the first user' do
        in_browser(:chrome) do
          expect(current_path).to eq '/match-result-double'
        end
      end
      # scenario 'to the second user' do
      #   in_browser(:safari) do
      #     expect(current_path).to eq '/match-result-double'
      #   end
      # end
    end
  end

end

def in_browser(name)
  old_session           = Capybara.session_name
  Capybara.session_name = name
  yield
  Capybara.session_name = old_session
end