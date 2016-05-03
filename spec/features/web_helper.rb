def sign_in
  File.delete("./lib/name_log.txt") if File.file?('./lib/name_log.txt')
  name_log = File.new("./lib/name_log.txt", "w")
  name_log.write("Costanza")
  name_log.close
end
