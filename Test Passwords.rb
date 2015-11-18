require "rautomation"

#Get potential passwords
#Loop until found

File.open("./perms.txt").each do |line|

puts "Testing #{line}"

response = spawn "PATH TO YOUR .EXE GOES HERE -p #{line}"
puts response

window = RAutomation::Window.new(:title => /TITLE OF .EXE WINDOW GOES HERE/i)
sleep(0.5)
puts "Window exists: #{window.exists?}" 
if !window.exists?
 puts "Process launch failed, terminating"
 break
end

puts "Title: #{window.title }" 

if window.text.include? "Error"
  puts "Wrong password, killing PID #{window.pid}"
  Process.kill("KILL", window.pid)
  Process.waitall
else
  puts "The password is #{line}"
  break
end

end