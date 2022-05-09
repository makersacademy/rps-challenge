def sign_in_and_submit_name
  visit '/'
  fill_in :name, with: 'Jimmy'
  click_button 'Submit'
end

def has_expected_output
  outputs = ['Computer Wins!', 'Player Wins!', 'Draw']
  outputs.each do |output| 
    if page.has_content?(output) 
      @check = true
    end
  end
  @check
end