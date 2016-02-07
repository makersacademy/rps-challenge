class Players

  attr_reader :first_name, :surname, :email

  def initialize(first_name, surname, email)
    @first_name = first_name
    @surname = surname
    @email = email
  end

end
