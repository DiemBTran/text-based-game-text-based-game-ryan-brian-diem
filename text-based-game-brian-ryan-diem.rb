$image = './ascii/smiley.txt'
$name = 'buddy'

def render_ascii_art filename

    File.readlines(filename) do |line|
    puts line

  end

end

def start

    puts render_ascii_art './ascii/learn.txt'

    "
    You just woke up for your BIG day. After three long, hard months of study at LEARN Academy, you are now ready to interview for your internship!".each_char do |value|
        putc value
        sleep 0.01
    end

    sleep 0.75

    sleep_module

end

def sleep_module

    puts "

    Did you get a good night's rest?

    a. Yes
    b. No

    Enter your choice: a or b?
    "

    user_choice = gets.chomp.downcase
    puts `clear`

    if user_choice == 'b'

        "Oh no, that's terrible!".each_char do |value|
            putc value
            sleep 0.01
        end

        sleep 0.75

        puts "

        What kept you up?
        
        a. Counting sheep. I think I messed up my while loop.
        b. The narrator of a text-based game repeatedly asking me questions.
        "

        user_choice = gets.chomp.downcase
        puts `clear`

            if user_choice == "flies"

                $image = './ascii/david.txt'

                $name = 'David'

                "It's all right. You are emboldened by your thoughts of future six dollar pizza and cs those flies like the Challenger you are. You go to your computer... ".each_char do |value|
                    putc value
                    sleep 0.01
                end
                
                sleep 0.75

                interview_module

            elsif user_choice == "ghost dog"

                $image = './ascii/rachael.txt'

                $name = 'Rachael'

                "Cool.".each_char do |value|
                    putc value
                    sleep 0.01
                end

                sleep 3

                puts"
                "

                "You're ready. You drink your morning coffee, holster your sonic screwdriver, deadlift your couch, and then move over to your computer...".each_char do |value|
                    putc value
                    sleep 0.01
                end

                sleep 0.75 

                interview_module

            elsif user_choice == "a"

                "You were expecting an infinite loop joke here, weren't you? Nope. Not on my watch...".each_char do |value|
                    putc value
                    sleep 0.01
                end

                sleep 0.75

                clothes_module

            elsif user_choice == "b"

                "Rude.".each_char do |value|
                    putc value
                    sleep 0.01
                end

                sleep 0.75

                clothes_module

            else

                "I'm sorry, let's start over.".each_char do |value|
                    putc value
                    sleep 0.01
                end

                sleep 0.75

                sleep_module

            end

    elsif user_choice == 'a'

        "Two REM cycles? Awesome!".each_char do |value|
            putc value
            sleep 0.01
        end

        sleep 0.75

        clothes_module

    else

        "I'm sorry, let's start over.".each_char do |value|
            putc value
            sleep 0.01
        end

        sleep 0.75

        sleep_module

    end

end


def clothes_module

    puts "

        Let's get you dressed!

        What's your style for the day?
        
        a. Casual
        b. Business Casual
        c. Business Formal

        Enter your choice: a, b, or c?
        "

    user_choice = gets.chomp.downcase
    puts `clear`

    if user_choice == 'a'

        "Okay, if you're sure... (Somewhere a single tear rolls down Bryan's face.)".each_char do |value|
            putc value
            sleep 0.01
        end

        puts ""

        sleep 0.75

        drink_module

    elsif user_choice == 'b'

        "Riding that line just right!".each_char do |value|
            putc value
            sleep 0.01
        end

        sleep 0.75
        
        puts "

        Do you want to wear glasses for the first time?
        
        a. Yes
        b. No
        
        Enter your choice: a or b?
        "

        user_choice = gets.chomp.downcase
        puts `clear`

        if user_choice == 'a'

            $image = './ascii/bach.txt'

            $name = 'Bach'

            "Tired? Nah. You've been up since 6am. You don't drink coffee. Coffee drinks YOU. You bump into your chair and this time you don't even apologize to it. A single nod to Lily, then you go to your computer...".each_char do |value|
                putc value
                sleep 0.01
            end

            sleep 0.75

            interview_module

        else

            "Roger that!".each_char do |value|
                putc value
                sleep 0.01
            end
            
            puts ""

            sleep 0.75
            
            drink_module

        end

    elsif user_choice == 'c'

        "Check the reflection:".each_char do |value|
            putc value
            sleep 0.01
        end

        sleep(1)

        puts "

        Noice."

        sleep(1.25)

        puts "
        Very noice."
        
        sleep(1.25)

        drink_module

    elsif user_choice == 'jedi'

            $image = './ascii/ryan.txt'

            $name = 'Ryan'

            "You don your black hoodie. The Force surges through you, so strong that your internet connection momentarily fades. You look in on your young Padawan, then go to your computer to triumph in your next battle...".each_char do |value|
                putc value
                sleep 0.01
            end

            sleep 0.75

            interview_module

    else
        "I'm sorry, let's start over.".each_char do |value|
            putc value
            sleep 0.01
        end

        sleep 0.75

        clothes_module

    end

end

def drink_module

    puts "
        Let's get your morning drink!

        Coffee or tea?

        a. Coffee
        b. Tea
        
        Enter your choice: a or b?
        "

    user_choice = gets.chomp.downcase
    puts `clear`

    if user_choice == 'a'

        "YOWZA! That's a jolt!".each_char do |value|
            putc value
            sleep 0.01
        end

        sleep 0.75

        puts"

        Does it make you want to do anything special?
            
        a. Sing!
        b. Poop. Definitely poop.    
        c. Wait... what?
        
        Enter your choice: a, b, or c?
        "

        user_choice = gets.chomp.downcase
        puts `clear`

        if user_choice == 'a'

            $image = './ascii/joel.txt'

            $name = 'Joel'

            "You're not an American Idiot. You're All Work and No Play, MmHmm. Gun-Duck enthusiast. Master of Zoom. You put on your Black belt in Jiu Jitcssu, then turn to your computer...".each_char do |value|
                putc value
                sleep 0.01
            end

            sleep 0.75

            interview_module

        elsif user_choice == 'b'

            $image = './ascii/diem.txt'

            $name = 'Diem'

            "Um, okay. So that happens. You then turn to your army of plushies. They have taught you organization. Relentless positivity. And the importance of an arsenal. An arsenal of emojis. You salute them, then go to your computer...".each_char do |value|
                putc value
                sleep 0.01
            end

            sleep 0.75

            interview_module

        elsif user_choice == 'c'

            "Don't worry about it.".each_char do |value|
                putc value
                sleep 0.01
            end

            sleep 0.75

            puts "

            Did you make it in your own espresso machine?
            
            a. Yes
            b. No
        
            Enter your choice: a or b?
            "
            
            user_choice = gets.chomp.downcase
            puts `clear`

            if user_choice == "a"

                $image = './ascii/chuck.txt'

                $name = 'Chuck'

                "You inhale the caffeinated haze. Your mind drifts. You are in the sea. Alone. With a board. And a wave. And the pure joy of knowing that - this year at least - the Padres are not garbage. You return emboldened! You walk to your computer...".each_char do |value|
                    putc value
                    sleep 0.01
                end

                sleep 0.75

                interview_module

            elsif user_choice == "b"

                "Relatable.".each_char do |value|
                    putc value
                    sleep 0.01
                end

                sleep 0.75

                desk_module

            else

                "I'm sorry, let's start over.
                ".each_char do |value|
                    putc value
                    sleep 0.01
                end

                sleep 0.75

                drink_module

            end
        else

            "I'm sorry, let's start over.
            ".each_char do |value|
                putc value
                sleep 0.01
            end

            sleep 0.75

            drink_module

        end

    elsif user_choice == "b"

            "Mmm-mmm, that leaf water sure does go down smooth...".each_char do |value|
                putc value
                sleep 0.01
            end

            sleep 0.75

            puts "

            It's almost time! How do you feel?
            
            a. Confident! I think I might want to prepare other people for this very moment someday!
            b. Confident! It's just like an audition for a role!
            c. I have forgotten literally everything I've ever learned.
    
            Enter your choice: a, b, or c?
            "

            user_choice = gets.chomp.downcase
            puts `clear`

            if user_choice == 'a'

                $image = './ascii/sarah.txt'

                $name = 'Sarah'

                "You're ready. But your interviewer doesn't know about the deal you made with LEARN. They said you could come to LEARN. They DIDN'T say you could ever leave... MUA-HAH-HAH! MUA-HAH-HAH-HAH! MUA-HA - oh, your computer turns on by itself...".each_char do |value|
                    putc value
                    sleep 0.01
                end

                sleep 0.75

                interview_module

            elsif user_choice == 'b'

                $image = './ascii/drew.txt'

                $name = 'Drew'

                'You center yourself. You say "red leather, yellow leather" 37 times. Of course, you must roll a d20 for your Performance check. You crit. You always crit. You sit at your computer...'.each_char do |value|
                    putc value
                    sleep 0.01
                end

                sleep 0.75

                interview_module

            elsif user_choice == 'c'

                "Meh, I'm sure it'll be fine.".each_char do |value|
                    putc value
                    sleep 0.01
                end

                sleep 0.75

                interview_module

            else

                "I'm sorry, let's start over.
                ".each_char do |value|
                    putc value
                    sleep 0.01
                end

                sleep 0.75

                drink_module

            end

    elsif user_choice == "water"

        $image = './ascii/brian.txt'

        $name = 'Brian'

        "How... hydrating. Okay, look. I'm getting kind of creeped out over having to simultaneously narrate in the first and second persons. How about you just go over to your computer and we can all move on...".each_char do |value|
            putc value
            sleep 0.01
        end

        sleep 0.75

        interview_module

    elsif user_choice == "pumpkin pie"

        $image = './ascii/andee.txt'

        $name = 'Andee'

        "That's not even a beverage. But don't let that distract you from the fact that you now step into your TARDIS to go back to 1998 and throw Mankind off Hell in a Cell, and plummet 16 ft through an announcer's table. Which is also a TARDIS. So now you're back and can stand at your computer...".each_char do |value|
            putc value
            sleep 0.01
        end

        sleep 0.75

        interview_module

    else

        "I'm sorry, let's start over.
        ".each_char do |value|
            putc value
            sleep 0.01
        end

        sleep 0.75

        drink_module

    end

end

def desk_module
    puts "

    Let's go to your desk!

    Two quick questions:
    Do you need to move it?
    And is it in a tree?
    
    a. I need to move it.
    b. It's in a tree.
    c. Okay, I can understand needing to move it. But why would it be in a tree?
    
    Enter your choice: a, b, or c?
    "

    user_choice = gets.chomp.downcase
    puts `clear`

    if user_choice == 'a'

        $image = './ascii/nate.txt'

        $name = 'Nate'

        "You channel the power of an Idaho Caribou to muscle your desk across the entire house. You see the sun through the window. It's strange to see it when you're awake, but you think you will come to be good friends. You turn on your computer... ".each_char do |value|
            putc value
            sleep 0.01
        end

        sleep 0.75

        interview_module

    elsif user_choice == 'b'

        $image = './ascii/matt.txt'

        $name = 'Matt'

        "Before going outside, you pause to get into character. Today YOU are the hero. But you are not Captain America. You are not Master Chief. Today you are NEO. And THERE WILL BE NO SPOON. You begin to climb...".each_char do |value|
            putc value
            sleep 0.01
        end

        sleep 0.75

        interview_module

    elsif user_choice == 'c'

        "Some questions have no answer.".each_char do |value|
            putc value
            sleep 0.01
        end

        sleep 0.75
        
        puts "
        
        Let's go to the interview!"

        interview_module

    else

        "I'm sorry, let's start over.
        ".each_char do |value|
            putc value
            sleep 0.01
        end

        sleep 0.75

        desk_module

    end

end

def interview_module

    sleep 0.5

    puts"

        Now's the time!

        Press RETURN to open zoom and turn on your video!"

    gets
    puts `clear`
    
    puts render_ascii_art $image

    sleep 1.5
    
    puts "
    Looking GOOD, #{$name}!"

    sleep 1.5

    puts "
    You're going to nail this!
    "

    sleep 1.75

    "    DELTA!, DELTA!, DELTA!".split(',').each do |word|
        print word
        sleep 1.1
    end
    
    sleep 0.75

    print "
    
    LET'S "

    sleep 1
    
    "GOOOOOOOOOOOOOOOOOOOOOOO!!!!!".each_char do |value|
        putc value
        sleep 0.065
    end

    sleep 1

    puts "
    "

end

start
