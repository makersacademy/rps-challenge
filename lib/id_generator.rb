class IdGenerator
  def next
    SecureRandom.uuid
  end
end