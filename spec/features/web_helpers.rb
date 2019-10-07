def sign_in_and_play
  visit '/'
  fill_in('p1_name', with: 'Balboa')
  click_button('Submit')
end

def sign_in_vs_paper
  sign_in_and_play
  allow_any_instance_of(Computer).to receive(:choice).and_return("Paper")
end
