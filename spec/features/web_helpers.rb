require 'spec_helper'

def register_and_play
  visit '/'
  fill_in 'name', with: 'Alex'
  click_button 'Play RPS!'
end
