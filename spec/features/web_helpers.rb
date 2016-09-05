require 'spec_helper'

def sign_in
  visit("/")
  fill_in("player", with: "Joseph")
  click_button("Submit")
end
