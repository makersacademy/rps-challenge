# frozen_string_literal: true

class WebHelper
  PLAYER_1_NAME = 'Rahul'

  def self.click_to_submit_player_names
    Capybara.click_button 'Play!'
  end

  def self.input_player_1_name
    Capybara.visit '/'
    Capybara.within(:css, '#player_names_form') do
      Capybara.fill_in :player_1_name, with: PLAYER_1_NAME
    end
  end
end
