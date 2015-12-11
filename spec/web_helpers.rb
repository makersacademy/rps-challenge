def register
  visit '/'
  fill_in(:player_name, with: 'Charlie')
  click_button('Register!')
  allow(Kernel).to receive(:rand).and_return(10)
end
