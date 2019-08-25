def sign_in_and_play(form_name)
  visit '/'
  within("##{form_name}") do
    fill_in('name', :with => 'Chris')
    click_button('Submit')
  end
end

def sign_in_and_play_rps(form_name)
  sign_in_and_play(form_name)
  click_button('Rock Paper Scissors')
end

def sign_in_and_play_rpsls(form_name)
  sign_in_and_play(form_name)
  click_button('Rock Paper Scissors Lizard Spock')
end
