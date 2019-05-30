require_relative '../config/environment'
require 'io/console'

class ApplicationController
  $teacher
  def call
    main
  end
  def main
    puts "==============================================================================================="
    puts "Welcome to Your CLI Student Database for Teachers!!! What's your username?".colorize(:blue)
    puts "==============================================================================================="
    puts ""
    puts "-----------------------------------------------"
    puts ""
    username = gets.strip.capitalize
    puts ""
    puts "-----------------------------------------------"
    if username == "Exit"
      exit!
    end
    puts ""
    case username
      when username
        person = Teacher.find_by(name: username)
          if person != nil
            if person.name == "Rishi"
              puts "Xkoooodddddddddddddooc::lxOOkOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO000OOOOOkkkxxx0
Kl;;;;;;:::::::::::;,....cdddddddddddddddddddddddddoooddddxxxxdlcllllll:::d
Kl;;;::::::::::::::;,....cddddddolllooolllollc;,:c::::cclodxxxdlclllllc:::x
Kl;;;::::::::::::::;,....cdddddc,'',,,,,',,,,'...,;,;;;:lddxxxdlclllllc::cx
Kl;:::::::::::::::::,....cddddc,.................';;;:ccodxxxxdlc:cllcc::cx
Kl;:::::::::::::::::,....cddl;..........'''''''''',;::ccoxxxxxo:;;;;:::::cx
Kl::::::::::::::::::,....cdc'...'',,;;;:::;;;,,,,,,;;clcoxxxxdc,,,,,,;;:::d
Kl::::::::::::cccc::;....co;.',;;:::cccccc:;,,,,,,,,':lldxxxxl,,,,,,,,;:::d
Ko::::::::::ccccccc:;....;:,,,;::::cccllllcc::::;;,,.,cldxxxdc,,,,,,,,;:ccd
Ko:::::::::cccccccc:;'...'',,;;:::ccllllllllllcc::;,',:ldxxxdc,,,,,,,,;:ccx
Ko:::::::cccccccccc:;'...',,;::cccclloooooooolllc::;,,:oxxxxd:,,,;,,,;;::cx
Ko:::::ccccccccccccc;'...',,,,,,,;:cloodddddoolllcc:;;cdxxxxo;,,;;;,,:c::ck
Ko::::cccccccccccccc:'...........,;clooddddddoollc::::ldxxxxo:,,,,,,;loc:ck
Ko::::cccccccccccccc:'... .,:,...',:cclodddddollllc::;cddddxdl:,,',,:ccc:cO
Ko:::::ccccccccccccc:,....'cl:'...,;:ccloddddolool:,;clooooooll:;;;:ccc:;lO
Ko:::::::ccccccccccc:,...,cool:;;;:cllloddddollooc:;;lolllclcc:;;;:lllc:;l0
Ko::::::::cccccccllc:,..'coool:,:clooooddddocccll:cccllcccclc;,,,,,:ccc:;l0
Ko:::::::::ccccclllcc,...;:;:c;'',cooddddooc::ccccclcclllllc;,,;;;;;;:;;;l0
Ko:::::::::ccccclllcc;......',;,...:llllllccc:clolcccclclllc,,;:::;;;;,,;o0
Kl::::::::ccccccllllc;... .,cllc,..,:::cccc:ccloolcccclllllc,,;;;:::;,,,;o0
Kl::::::::ccccclllllc;'.. .,clol;'';;;;:cc:::clooollllolollc;,;;;;:;,,,,:d0
Ko:::::::cccccclllllc;'.....',;;'',;;;;::;;;;coddollllllllc:,,,;;;;,,,,;cd0
Ko:::::::cccccclllllc:'... ...'''',,,,,;,,',:odddooocccclcc;,,,,,,'',,;:lx0
Ko:::::::cccccclllllc:'.......''..''.....';clddoodkxlcccc:,,,,,,''',,;;:lx0
Ko:::::::cccccclllllc:'................';clodoooxkOkxdoc;,',,;;,,',,,,;:ox0
Ko::::::ccccccclllllllc;.....',,;::,'';cloooodxkOOOkxxkxl;,,,;;;;,,,,,;:ox0
Ko::::::ccccccclllodddl'....,:;:ccoolccc:codxkOOOOkxxkkxc,,;;;clc:;;;;;cdx0
Ko::::::ccccccclodxxxx:....,cl:collodddl:lxkOOOOOkxkxkkd;,,,,;odxxdlc::lxx0
Ko::::cccccclllldkkkxo'...'lddccool:;;:looloxkOOkxkxxkko;,,,,;ldxxxxxdooxx0
Kl::::cccclooooloxkkd;....:oddolodo:,';ldddoodxkkkxxkkx:,,,',:odxxxxkkkxxk0
Kl::::::ccododdoldkkl'...'ldxxdlodl:,.,ldxxkkxxkkxxkkko;'''',codddxkkkkkkk0
Kl;::::cclddodxdooxx:''..;oxxxdoodc:,.,ldxxkxxkkxxkkkd:,'''.,ldddxkkkxxkkkK
Kl;;;,;:ldxxddxxddxo,.'.'cdxkxdoddcc;.,cdxkxxkxdxkkkxd:,''..;ldxkkkxxxkkkOK
0c'....;odxxxddxxxxc....;ldxkxdoxdcc;',cdxxxkxdxkkxxko;,''.';oxxkkxdxkkkkOK
O'  ..,ccldxxxdxxxxc'...:ooxkkddxl:c;,;lddxxddxkxdxkkl,,''.':dxxxddxkkkkkOK
O' . .colcldxxxkkxd:,,,,lxodkkddxc:c:,;ldxxddxxddxkOxc,,,'',lxdoodxxxkkkkOK
O'   ,oolooodxkkkdl'...;oxdxkkxxdc:c:;:lddodxxxddkOkd:,,'',:odlodxxxxkkkkkK
0,  .cdooodooxkkkd:...'cddxxkkxxo:::c:cloloxxxdddkkko;,,,',cdoloodxxxkxxkk0
O,  'oxoodddodxkxo,...:ddddxxxkko:::ccclodxxddodxkkxl::::::ldoloodxxxxxxkk0
O'  'oxdodddddxkx:...'lxxddxxxkxc,,,;;;cdxdoooddxkOd:;::cclodoloodddxdxkkk0
O. .;dxxddddddxkd;...'lxxxdxxkkd;';;;;;cdolloddxkkOo'..',,:odoloooododxkxk0
O' .:oxxxxxxxxxkx:.. .:dxkxxxxxl;,:cccclollloddxkkkl'.'',;codllllloooxxdxkK
K:':oxkOOOOOOOOOOo;'',:okOOOOOkdlcodoodxxdddxxkOOOOd:;::ccoxxdddddddxOkkO0X
"
            elsif person.name == "Charlie"
              puts "clllllllllllooddddxxxxkO0KNWWWWWWXK00000000OOOOOOkkkkkkkkkkkxxxxkkkkkkkkkkO
;;;;;;;;;;::::ccclooodddxk0NWWWWXK0OOOOOOOOOkkxxxxxxxxdddddddddddddoooddddx
;;;;,,,,,;;;;;:::cclloooodx0NWWXKOOOOOOOOkkkkxxxxxddddddddddooooooooooooood
,,,,,,,,,,,,;;;;;:::cccloooxKNNKOkkkkkkkxxxxxxxxxxddddddddddooooolllllllllo
,,',,''',,,,,;;;;;;;:::ccllokXKOkkkkkxxxxxxxxxdddddddddddooolllllllllllllco
''''''''',,,,,,,,,,;;;;:::ccoO0kxxxxxxxxxxxdddddddddddoooollllllllccccccccl
......''''',,,,,,,,,;;;;:;::ck0xddddddddddddddoooddoooolllllllcccccc::::::l
......'''''''',,,,,,,,,;;,,,;xOdoodddddddddddoooooolllllccccccccc:::::::::l
........'''',,,;;;;:::ccc:;,,x0dlooooooooooooooollllccccccccc:::::::::::::c
......',,;:cclllooooooddooollxOdlloooooolllllllllccccc::::ccc:::;;;;;;;;;;c
..'',:cloooooooodddddxxxddddddddoooollllllccccccccc::::::::::;;;;;;;;;,,,;:
',:clooodddxxxkkOOOOOOOOkxxxxdddddoolllcccccccc:::::::;;;:;;,,,,,,,,,,,,,,;
:lloooooddkkOO0000OOOOkkkkkOOkxxdddooollc::::::::;;;;;;;;;,,,''''''''''',';
oooooooddxkOOkkxxdddoolccldkOOkkkxxdooolc:;;;:;;;;;;,,,,,,''''''''''',,''.'
dddxxxxxxxkxdooodoooollc::;:lxkOOkxddooolc:,,;;;;;,,,,'''''........'''.....
dxkOOOOOOkxoodddddoooollc:'..,ldkkkxdddoolc:,'',,,,'''''..........''.......
xxkOO00Okdooddoolc:;;::::;'.  .;oxxxxdddooll:'...........................,c
xkOOOOko:,,;col:,...',,,,;;'.  .:dxxxxxddoool;..........................cdo
xkkOOOxc'.',:ll:;,'',;,,;;::,.  'cdxxxxxdoool:........',;;::::,........:ddd
ddxxkkdc,,;:clc::::ccccccc:::'. .:dxxxxddooll;',;;;'.,;::::;;;,'......,::co
xxkkxxolllllolcccclloooolcc::,. .:odxxddoollc;'';codoc:;,,,,,,,,'''''',,,,;
xxxddolloolllc;;;;;cllollcc::;,';coddddoollll;..,:ldxxl,'.'''''',,,,,,;,'.'
oolllllllc:::,'',,;:c:::::::;;;:coooooollllcc;..';:lodl:,..'''';cc:;;,;;,,;
odooooooc;;:;;;;;;,,,,;:;;;;;;;coooolllllcccc,.',;:clllc;,..''';looolcc:::c
ddddddddoc;,,:ccc:;,';::;,,,,;:lllclcccccccc;..,;;;:cllc:;,'...;loodddxdddx
ooodddddolc:;;;;;,,;::;;,,,;;:cccc:cccccccc:'..',,;;:ccc::::,..,ldddddxxddx
llllllooolc::;;;;;;;;;,,,,;:ccc:::::cc:::::,...,,,;;;::ccccc:'..:odddodddxk
clloooodddddolcccl:,,,;;:::ccccccccccc::::,. ..'',;;,;;:cccc:;'.,cooddoddxx
clloddddddddddlc:::ccclllcccccccccccc::::,.  ...',;,',;:ccclc:;..;clooooodx
clloddddddollllc;;:cllllllcccccccccccc:;'.   ..'',,''',,;clllc:;,,;:clloood
lcllooodddoolc:,..,cllccccccccccccc::;,.    ..',,,'..'',;:clllcc::;,;::cllo
dollloollllc:,'..';cllllcccccccc::;,....    ..',;,....',,;:cllllllc;,',,;:l
kxddoollcc:;,,',,,;;:;;;,,,,;;;;;,.......  ...',;'....',,;;:cclloollc;,'',:
kkxxxdoolc:;,,,,'''''........................',;,.....'',,,;;::cloooodool::
kkxxxdoc:;,'''.........................'....'',,'.......'',,,,;;:cclooddddd
kkkxdc,'..............................'',''',;;;;,........'',,;;;::cccllood
Okko;................................'',;:;;:cccc:;,........',,;;;::::ccllo
Okko;.................................';cc:::clll:,,,,'',,,,'''',,;;;;::ccl
0OOko,..............................',;:ll:cccclc,...''''',,;;;;,',,,,;;::l
000OOdc;'........................'',:cccccccccll:'............',,;;,,,,;;;c
00000OOkdl:,'..................'',;:lllcc:clllllc'..................''',,,:
000000OOkkxdlc::;,,,'''''''',;;::ccllllllc:cooool:'....................',,:
0000000OOOOOkkxxdddoolllllcccclllloooooooolcloddolc,................. ..',:
000000000OOOOOOkkkkkkkxxxddooooddddddddddddolloddlc,............        .':

"
            elsif person.name == "Matt"
              puts "o:,,:oxkOkkxxxxkkkkkkkkkkxdolccclloodddxxkkOOOOOOOkxxxxxxxxxxxxxxxxxxxxxxxk
xo:,';ldxkkxxddxxkkkxxdoc;'.........''',;codxkkkkkxxddddddddddddddddddddddx
kxdc,',:oxxkxxdddxxxdl;'..................',:coddxxdddddddddddddddddddddddx
kxxxl;',:odxxxddddoc,........................',;:lodddddddddddddddddddddddx
xxxxxdodxOOxxxxdl,..............................',:lddddddddddddddddddddddx
xxxxxxkkOXWKkxdc'....  ............................,coddddddddddddddddddddx
xxxxxxkkOXMWXx:.....  .   ..........................';ldddddddddddddddddddx
xxxxxxkkOXMMNo.......   ................''......   ...'cddddddddddddddddddx
xddxxxkkOXWMK:.. ..    .........'',;:::clllllc:;'. ....'cdddddddddddddddddx
xddddxxkOXWXo..          .....'',;:cllldxkkOOOOkdl'. ...'codddddddddddddddx
xddddxxkOK0l'...      .....''',,,;clddxkOO000000Okd;.. ..,coddddddddddddddx
xdddddxkO0Kx:............';;::::clodxkkOOOO000000Okd;.....;lddddddddddddddx
xdddddxkOKWKl. ..,::cc::cloooooodxkkOOOOOOO0000000Okd;.....;loddddddddddddx
xdddddxkOXWKc. .'clloddddxxkkkkkOOOOOOO0000000000000Od,....'coodddddddddddx
xdddddxkOXWK:...:lloooddddxkkkOOOOO000000000000000000kc'...'coddddddddddddx
xdddddxxkKWO, .,llllc:;,,,,;:coxkOO00OOxdolccclloxk000k:....;oddddddddddddx
xdddddxxkKXo. .:ll:,'..''''',;:ldkO0OOkol:;,,,;;::cdk00x;...,oddddddddddddx
xddddddxkKXo..'clc;;;;;::::;;;;coxkO00Oxoc:::clooooodO00o'..,lddddddddddddx
xddddddxkKNx..,llcc:;'''...,;,,;cdkOOOxoc:;,..,::coxOO00x;..,lddddddddddddx
xddddddxx0Nk,.;llolc;,,;,,;::;,;lxkOOOkdolcc::cllldkO000k:..,oddddddddddddx
xodddddxxxdl;.;looooooooolllcc:coxOOOOOkxxdddxxkOOOO0000kc';oxxxddddddddddx
xoodddddxoc::,;lodddxxddddddollldkOOOOOOkkkkkkOOO0000000kc;dOkddddddddddddx
xoooodddxdlcl;;coddxkkkxxxxxdolldxOOOOOOOOOOOOOO00000000klck0Oxxxdddddddddd
xoooooddxkdol;,;lodxxkkkkkkdollodxOOOOOkkkkkOOO00000000OxodxOkxxddddddddddd
xooooodddOOdlc;;:lodxxkkkkxocloodxkOOOOkkkxddxkO000000Okxxkxkkxooooodddoood
xooooooddOKxllccccloddxxxdolcc::cldxxddodxxxxddkOOOOOOOkxkkkkxolllooooooolc
xooooooddONKdoolcclloooddoollc:;;::clooooxxxxxddkkkkOOkxxkOkkocccclloool:''
xloooooddONWKkol::clllooolllllcccllloodddddddoddxkkkkkxdddkOkolcclloool:'..
xllooooddONMW0dllclllloddolc:;:::cllllllccc:codxkkkkkkxO00KXX0xooooolc;'...
xolllloodONMWKdlolllllldxddol::::cclloooollodxxkkkkkkxkKXNNNNNKkoolc;,,....
xooolloodONWWKdlllllcllloddddollllooddddddxxkkxxxxxxdx0XNNNNNNN0dlc;,'.....
xooolloodONWWKdllllolcccloooodooollllllodxxkkxxddddox0XXXXNNNNNKxc;,'......
xooolloodkNWWKdlllloooc::cloooddddolllodxkkkkxxdoolokKXXXXXXNNNXx;''.......
xooolllodkNWWKdlllloddo:;;:llooddxxxxxxkkkkxxxdolllok0KKKXXNNNXKx,.''......
xooolllookXWWKdlllloollc:;,;:lloddxxxxkkkxxdooccclodkKKKKXXXNXXXx:'........
xooolllookXWWKdlllloc,;ccc;,,,;:clodooooooll::;cloddk00KKXXXXXXKdc;........
xolllllookXWWKdlllll:.;llllc;,'',,;::::;::;;;:coodddox00KKKXXNXKxc;'',.....
xolllllookXWWKdllc:c;.,looool:;,,',,,,,,,;;:cloodddo;,xKKKKXXK0Od:,,;;'...'
xolllllloxXWWKd:,',:;''cloooolcccccccclloooooooddool'.:x0KXXKxccc:;::,....'
xolllllloxXWW0c...;::;;;coodddooooooodddxddoooooolc;'.',:d0XXx:;loc;,'....'
xolllllloxXN0c....;:::ccccloddxddddddxxxxxddoooolc:'.';,..:x0K0dc:;'''''..'
xllllllllodl'....';::::clc:lodxxxxxxxkkkkxxddddol:,..;c;.  .,lxko;'',,,'..'
xllllll:,.........;:::::ccc:codxxxxxkkkkkkxxddoc::;,'.',.  ..'',,'''',,'..'
xllllc;...........,:::::cccl:cdxxxxxkkkkkkxxddc;;,;;,............','.'''..'"
            end
            puts "================================================"
            puts "Hi #{person.name}, what's your password?".colorize(:blue)
            puts "================================================"
            puts ""
            puts ""
            password = STDIN.noecho(&:gets).strip
            puts ""
            weird_person = Teacher.find_by(password: person.password)
            if password == weird_person.password
              puts "======================================================="
              puts "Welcome #{person.name}, what would you like to do?".colorize(:blue)
              puts "======================================================="
              puts ""
              $teacher = person
              lists
              puts ""
            else
              puts ""
              puts "Invalid Password. Try again.".colorize(:red)
              puts ""
              main
              puts ""
            end
          else
            puts "Teacher username not found.".colorize(:red)
            puts "Would you like to register? (y/n)".colorize(:green)
            puts ""
            puts "-----------------------------------------------"
            puts ""
            answer = gets.strip
            puts ""
            puts "-----------------------------------------------"
            puts ""
            if answer == "y"
              puts "================================================"
              puts "What's your username?".colorize(:blue)
              puts "================================================"
              puts ""
              puts "-----------------------------------------------"
              puts ""
              username = gets.strip.capitalize
              puts ""
              puts "-----------------------------------------------"
              puts ""
              puts "================================================"
              puts "what's your password?".colorize(:blue)
              puts "================================================"
              password = STDIN.noecho(&:gets).strip
              new_teacher = Teacher.create(name: username, password: password)
              new_teacher.save
              puts "New teacher #{username} has been added!".colorize(:green)
              main
            elsif answer == "n"
              main
            else
              puts ""
              puts "Invalid password start again".colorize(:red)
              puts ""
              main
              puts ""
            end
          end
      end
  end
    # when "Rishi"
    #   person = Teacher.find_by(name: username)
    #   puts "Hi #{person.name}, what's your password?"
    #   password = gets.strip.downcase
    #   if password = Teacher.find_by(password: password)
    #     puts "Welcome #{person.name}, what would you like to do? "
    #     $teacher = person
    #     lists
    #   else
    #     puts "Invalid password start again"
    #     main
    #   end
    # when "Matt"
    #   person = Teacher.find_by(name: username)
    #   puts "Hi #{person.name}, what's your password?"
    #   password = gets.strip.downcase
    #   if password = Teacher.find_by(password: password)
    #     puts "Welcome #{person.name}, what would you like to do? "
    #     $teacher = person
    #     lists
    #   else
    #     puts "Invalid password start again"
    #     main
    #   end
    # else
    #   puts "Teacher username not found. Would you like to register? (y/n)"
    #   answer = gets.strip
    #   if answer == "y"
    #     puts "What's your username?"
    #     username = gets.strip
    #     puts "what's your password?"
    #     password = gets.strip
    #     new_teacher = Teacher.create(name: username, password: password)
    #     new_teacher.save
    #     puts "New teacher #{username} has been added!"
    #     main
    #   elsif answer == "n"
    #     main
    #   else
    #     puts "Invalid input. Try again."
    #   end
    # end
  def lists
    puts ""
    puts "1. List of Students"
    puts ""
    puts "2. List of Projects"
    puts ""
    puts "3. Log Out"
    puts ""
    puts "4. Change Password"
    puts ""
    puts "5. Delete Self"
    puts ""
    puts "-----------------------------------------------"
    puts ""
    input = gets.strip
    puts ""
    puts "-----------------------------------------------"
    puts ""

    case input
      when "1"
        puts ""
        puts "***********************************".colorize(:light_red)
        puts "Names:"
        puts "***********************************".colorize(:light_blue)
        puts $teacher.find_students
        puts "***********************************".colorize(:light_green)
        puts ""
        puts ""
        students
      when "List of Students"
        puts $teacher.find_students
        puts ""
        puts ""
        students
      when "List of Projects"
        puts Project.all_project_names
        puts ""
        puts ""
        projects
      when "2"
        puts "***********************************".colorize(:light_red)
        puts "Projects:"
        puts "***********************************".colorize(:light_blue)
        puts Project.all_project_names
        puts "***********************************".colorize(:light_green)
        puts ""
        puts ""
        projects
      when "3"
        main
      when "Log Out"
        main
      when "4"
        puts "================================================"
        puts "What would you like your new password to be?".colorize(:blue)
        puts "================================================"
        puts ""
        puts "-----------------------------------------------"
        puts ""
        password = STDIN.noecho(&:gets).strip
        puts ""
        puts "***********************************"
        puts "PASSWORD UPDATED".colorize(:green)
        puts "***********************************"
        puts "-----------------------------------------------"
        puts ""
        $teacher.update(:password => password)
        lists
      when "Change Password"
        puts "================================================"
        puts "What would you like your new password to be?".colorize(:blue)
        puts "================================================"
        puts ""
        puts "-----------------------------------------------"
        puts ""
        password = STDIN.noecho(&:gets).strip
        puts ""
        puts "***********************************"
        puts "PASSWORD UPDATED".colorize(:green)
        puts "***********************************"
        puts "-----------------------------------------------"
        puts ""
        $teacher.update(:password => password)
        lists
      when "5"
        puts "================================================"
        puts "Are you sure? (y/n)".colorize(:color => :white, :background => :red)
        puts "================================================"
        puts ""
        puts "-----------------------------------------------"
        puts ""
        answer = gets.strip
        puts ""
        puts "-----------------------------------------------"
        if answer == "y"
          if Teacher.all.include?($teacher)
            $teacher.delete
            puts "Deleted #{$teacher.name}.".colorize(:color => :white, :background => :red)
            main
          else
            puts "Teacher does not exist!".colorize(:red)
            main
          end
        elsif answer == "n"
          lists
        else
          puts "Invalid input. Please try again".colorize(:red)
          puts ""
          puts "-----------------------------------------------"
          puts ""
          input = gets.strip
          puts ""
          puts "-----------------------------------------------"
        end
      when "exit"
        exit!
      else
        puts ""
        puts "Invalid input. Please try again".colorize(:red)
        puts ""
        lists
      end
  end

  def students
    puts "================================================"
    puts "What would you like to find out?".colorize(:blue)
    puts "================================================"
    puts ""
    puts "1. List of projects for a student"
    puts ""
    puts "2. Student with most commits"
    puts ""
    puts "3. Student with least commits"
    puts ""
    puts "4. Add student"
    puts ""
    puts "5. Delete student"
    puts ""
    puts "6. Go back to Main Menu"
    puts ""
    puts "-----------------------------------------------"
    puts ""
    new_input = gets.strip
    puts ""
    puts "-----------------------------------------------"
    case new_input
      when "1"
        puts ""
        puts ""
        puts "================================================"
        puts "Which student's projects would you like to see?".colorize(:blue)
        puts "================================================"
        puts ""
        puts "-----------------------------------------------"
        puts ""
        name = gets.strip.capitalize
        puts ""
        puts "-----------------------------------------------"
        person = User.find_by(name: name)
        if $teacher.users.include?(person)
          puts ""
          puts "******************".colorize(:light_red)
          puts "Projects:"
          puts "******************".colorize(:light_blue)
          puts person.projecttitles
          puts "******************".colorize(:light_green)
          puts ""
          puts "======================================================================"
          puts "Would you like to see which projects are submitted on time? (y/n)".colorize(:blue)
          puts "======================================================================"
          puts ""
          puts "-----------------------------------------------"
          puts ""
          answer = gets.strip
          puts ""
          puts "-----------------------------------------------"
          if answer == "y"
            puts ""
            puts "On-Time Projects:".colorize(:green)
            puts "*****************************"
            puts person.on_time_completed_projects
            puts "*****************************"
            puts ""
            students
          elsif answer == "n"
            puts ""
            puts "================================================================="
            puts "Would you like to see which projects are submitted late? (y/n)".colorize(:blue)
            puts "================================================================="
            puts ""
            puts "-----------------------------------------------"
            puts ""
            answer = gets.strip
            puts ""
            puts "-----------------------------------------------"
            puts ""
            if answer == "y"
              puts ""
              puts "Late Projects:".colorize(:yellow)
              puts "*****************************"
              puts person.late_completed_projects
              puts "*****************************"
              puts ""
              students
            elsif answer == "n"
              puts ""
              students
              puts ""
            elsif answer == "exit"
              exit!
            else
              puts ""
              puts "Invalid input. Please try again.".colorize(:red)
              puts ""
              students
            end
          elsif answer == "exit"
            exit!
          else
            puts ""
            puts "Invalid input. Please try again.".colorize(:red)
            puts ""
            students
          end
        elsif name == "Exit"
          exit!
        else
          puts ""
          puts "Invalid input. Please try again.".colorize(:red)
          puts ""
          students
        end
      when "2"
        puts ""
        puts "*****************************************"
        puts "BEST STUDENT: #{$teacher.laziest_student} (#{$teacher.laziest_instance.commits.count} commits)".colorize(:green)
        puts "*****************************************"
        puts ""
        students
      when "3"
        puts ""
        puts "*****************************************"
        puts "LAZIEST STUDENT: #{$teacher.busiest_student} (#{$teacher.busiest_instance.commits.count} commits)".colorize(:yellow)
        puts "*****************************************"
        puts ""
        students
      when "4"
        puts ""
        puts ""
        puts "================================================"
        puts "What's the name of the student?".colorize(:blue)
        puts "================================================"
        puts ""
        puts "-----------------------------------------------"
        puts ""
        name = gets.strip.capitalize
        puts ""
        puts "-----------------------------------------------"
        $teacher.users << User.create(name: name, teacher_id: $teacher.id)
        puts ""
        puts "**************************************************"
        puts "Student #{name} has been added!".colorize(:color => :white, :background => :green)
        puts "**************************************************"
        puts ""
        puts ""
        lists
      when "5"
        puts ""
        puts "============================================================"
        puts "What's the name of the student you want to delete?".colorize(:blue)
        puts "============================================================"
        puts ""
        puts "-----------------------------------------------"
        puts ""
        name = gets.strip.capitalize
        puts ""
        puts "-----------------------------------------------"
        puts ""
        dead_student = User.find_by(name: name, teacher_id: $teacher.id)
        if User.all.include?(dead_student)
          dead_student.delete_user
          $teacher.users.delete(dead_student)
          puts ""
          puts "xxxxxxxxxxxxxxxxxxxxxxx".colorize(:red)
          puts "Deleting".colorize(:red) # maybe add sleeps later
          puts "xxxxxxxxxxxxxxxxxxxxxxx".colorize(:red)
          puts ""
          puts "Student #{name} has been deleted!".colorize(:color => :white, :background => :red)
          lists
        else
          puts ""
          puts "Student does not exist, try again!".colorize(:red)
          puts ""
          students
        end
      when "6"
        puts ""
        lists
        puts ""
      when "exit"
        exit!
      else
        puts ""
        puts "Invalid input. Please try again".colorize(:red)
        puts ""
        students
      end
  end

  def projects
    puts ""
    puts "================================================"
    puts "What would you like to find out?".colorize(:blue)
    puts "================================================"
    puts ""
    puts ""
    puts "1. Details of a Project"
    puts ""
    puts "2. Project with most commits"
    puts ""
    puts "3. Project with least commits"
    puts ""
    puts "4. Add a project"
    puts ""
    puts "5. Delete a project"
    puts ""
    puts "6. Extend a Project Due Date"
    puts ""
    puts "7. Go back to Main Menu"
    puts ""
    puts "-----------------------------------------------"
    puts ""
    new_input = gets.strip
    puts ""
    puts "-----------------------------------------------"
    case new_input
      when "1"
        puts ""
        puts ""
        puts "===================================================="
        puts "Which Project ID would you like to see details for?".colorize(:blue)
        puts "===================================================="
        puts ""
        puts "-----------------------------------------------"
        puts ""
        id = gets.strip.to_i
        puts ""
        puts "-----------------------------------------------"
        if Project.all_ids.include?(id)
          puts ""
          puts "********************"
          project = Project.find_by(id: id)
          puts project.title.colorize(:blue)
          puts "********************"
          puts ""
          puts "*********************************************************************************************************"
          puts project.project_details
          puts "*********************************************************************************************************"
          puts ""
          puts ""
          projects
        else
          puts ""
          puts "Invalid id, please try again. If exiting, please go back to the main menu.".colorize(:red)
          puts ""
          projects
        end
      when "2"
        puts ""
        puts ""
        puts "***************************************************"
        puts "MOST COMMITTED PROJECT: #{Project.least_committed_project} (#{Project.least_committed_instance.commits.count} commits)".colorize(:green)
        puts "***************************************************"
        puts ""
        puts ""
        projects
      when "3"
        puts ""
        puts ""
        puts "***************************************************"
        puts "LEAST COMMITTED PROJECT: #{Project.most_committed_project} (#{Project.most_committed_instance.commits.count} commits)".colorize(:yellow)
        puts "***************************************************"
        puts ""
        puts ""
        projects
      when "4"
        puts ""
        puts ""
        puts "================================================"
        puts "What's the project's title?".colorize(:blue)
        puts "================================================"
        puts ""
        puts ""
        puts "-----------------------------------------------"
        puts ""
        title = gets.strip
        puts ""
        puts "-----------------------------------------------"
        puts ""
        puts "================================================"
        puts "What's the project's description?".colorize(:blue)
        puts "================================================"
        puts ""
        puts ""
        puts "-----------------------------------------------"
        puts ""
        description = gets.strip
        puts ""
        puts "-----------------------------------------------"
        puts ""
        puts "================================================"
        puts "What's the project's due date?".colorize(:blue)
        puts "================================================"
        puts ""
        puts ""
        puts "-----------------------------------------------"
        puts ""
        due_date = gets.strip # unless due date is not in right format!
        puts ""
        puts "-----------------------------------------------"
        new_project = Project.create(title: title, description: description, due_date: due_date)
        new_project.save
        puts "Project has been created!".colorize(:green)
        puts "********************************************************************************************".colorize(:green)
        puts "Title: #{new_project.title}, Description: #{new_project.description}, Due Date: #{new_project.due_date}".colorize(:color => :white, :background => :green)
        puts "********************************************************************************************".colorize(:green)
        puts ""
        lists
      when "5"
        puts ""
        puts "========================================================="
        puts "What's the title of the project you want to delete?".colorize(:blue)
        puts "========================================================="
        puts ""
        puts ""
        puts "-----------------------------------------------"
        puts ""
        title = gets.strip
        puts ""
        puts "-----------------------------------------------"
        dead_project = Project.find_by(title: title)
        if Project.all.include?(dead_project)
          dead_project.delete_project
          puts ""
          puts ""
          puts "xxxxxxxxxxxxxxxxxxxxxxx".colorize(:red)
          puts "Deleting".colorize(:red) # maybe add sleeps later
          puts "xxxxxxxxxxxxxxxxxxxxxxx".colorize(:red)
          puts ""
          puts ""
          puts "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx".colorize(:red)
          puts "Project #{title} has been deleted!".colorize(:color => :white, :background => :red)
          puts "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx".colorize(:red)
          puts ""
          puts ""
          lists
        else
          puts "Project does not exist!".colorize(:red)
          projects
        end
      when "6"
        puts ""
        puts "==================================================="
        puts "What's the id of the project you'd like to extend?".colorize(:blue)
        puts "==================================================="
        puts ""
        puts ""
        puts "-----------------------------------------------"
        puts ""
        id = gets.strip.to_i
        if Project.all_ids.include?(id)
          puts ""
          puts "-----------------------------------------------"
          puts ""
          puts "================================================"
          puts "How many days would you like to extend it by?".colorize(:blue)
          puts "================================================"
          puts ""
          puts "-----------------------------------------------"
          puts ""
          number_of_days = gets.strip.to_i
          puts ""
          puts "-----------------------------------------------"
          change_project = Project.find_by(id: id)
          puts ""
          puts ""
          puts "***********************************************************************"
          puts "Original Date: #{change_project.due_date}".colorize(:yellow)
          puts "***********************************************************************"
          puts ""
          puts ""
          change_project.extend_due_date(number_of_days.days)
          puts ""
          puts ""
          puts "***********************************************************************"
          puts "Project due date has been extended until #{change_project.due_date + number_of_days.days}!".colorize(:green)
          puts "***********************************************************************"
          puts ""
          puts ""
          lists
        else
          puts ""
          puts "Invalid id. Please try again."
          puts ""
          projects
        end
      when "7"
        puts ""
        puts ""
        lists
        puts ""
        puts ""
      when "exit"
        exit!
      else
        puts ""
        puts "Invalid input. Please try again".colorize(:red)
        puts ""
        projects
      end
    end
end
