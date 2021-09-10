CHARS = ('0'..'9').to_a + ('A'..'Z').to_a + ('a'..'z').to_a
def random_password(length=10)
CHARS.sort_by { rand }.join[0...length]
end
banner = """


██▀███   ▄▄▄       ███▄    █ ▓█████▄     ██▓███   ▄▄▄        ██████   ██████ 
▓██ ▒ ██▒▒████▄     ██ ▀█   █ ▒██▀ ██▌   ▓██░  ██▒▒████▄    ▒██    ▒ ▒██    ▒ 
▓██ ░▄█ ▒▒██  ▀█▄  ▓██  ▀█ ██▒░██   █▌   ▓██░ ██▓▒▒██  ▀█▄  ░ ▓██▄   ░ ▓██▄   
▒██▀▀█▄  ░██▄▄▄▄██ ▓██▒  ▐▌██▒░▓█▄   ▌   ▒██▄█▓▒ ▒░██▄▄▄▄██   ▒   ██▒  ▒   ██▒
░██▓ ▒██▒ ▓█   ▓██▒▒██░   ▓██░░▒████▓    ▒██▒ ░  ░ ▓█   ▓██▒▒██████▒▒▒██████▒▒
░ ▒▓ ░▒▓░ ▒▒   ▓▒█░░ ▒░   ▒ ▒  ▒▒▓  ▒    ▒▓▒░ ░  ░ ▒▒   ▓▒█░▒ ▒▓▒ ▒ ░▒ ▒▓▒ ▒ ░
  ░▒ ░ ▒░  ▒   ▒▒ ░░ ░░   ░ ▒░ ░ ▒  ▒    ░▒ ░       ▒   ▒▒ ░░ ░▒  ░ ░░ ░▒  ░ ░
  ░░   ░   ░   ▒      ░   ░ ░  ░ ░  ░    ░░         ░   ▒   ░  ░  ░  ░  ░  ░  
   ░           ░  ░         ░    ░                      ░  ░      ░        ░  
                               ░                                              

"""
puts banner
puts "1. random Password"
puts "2. About ...."
print ">>> "
input = gets.chomp
case input
when '1'
    while true
        puts "\n Enter Len 10 > x > 30 to exit Enter => 0 "
        print ">>> "
        len = gets.chomp.to_i
        puts len
        if len == 0 
            exit    
        elsif len < 10
            len = 10
        elsif len > 30
            len = 30
        end
        puts "pass rand : "+random_password(len)
    end
when '2' 
    puts """
     github: github.com/nioxteam 
     channel: t.me/nioxteam """
else
   exit 
end
