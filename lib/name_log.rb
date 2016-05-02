class NameLog

attr_reader :player_name

def self.create(name)
  @instance = NameLog.new(name)
  @player_name = name
end

def self.name
  @player_name
end

def self.log_name
  name_log = File.new("./lib/name_log.txt", "w")
  name_log.write(@player_name)
  name_log.close
end

def self.load_name
  @player_name = File.open("./lib/name_log.txt").first.chomp
end

def initialize(name)
  @player_name =  name
end

end
