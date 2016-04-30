def sign_in
  visit "/"
  fill_in "name", :with => "Nick"
  click_button"Play"
end

def play_game(choice)
  sign_in
  allow(Kernel).to receive(:rand).and_return(1)
  click_button choice
end
