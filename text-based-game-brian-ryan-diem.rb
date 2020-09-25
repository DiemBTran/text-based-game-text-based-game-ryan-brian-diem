$image = './ascii/smiley.txt'
# create the main function that starts the story
def start
    # ***************TITLE & BACK STORY***************
    # displays the title and back story
    storyline =  "You just woke up for your big day. After three long, hard months of study at LEARN Academy, you are now ready to interview for your internship!"

    puts render_ascii_art './ascii/learn.txt'
    # puts storyline
    storyline.each_char do |value|
        putc value
        sleep 0.01
    end

    def sleep_module
        #****************SECOND Obstacle OPTIONS***************
        puts "

        Did you get a good night's rest?

        a. Yes
        b. No

        Enter your choice, a or b?"

        # get the users's choice
        user_choice = gets.chomp.downcase
        puts `clear`


        if user_choice == 'b'
            puts 'What woke you up?'
            user_choice = gets.chomp.downcase
            puts `clear`
                if user_choice == "flies"
                    $image = './ascii/david.txt'
                    puts "David text"
                    interview_module
                elsif user_choice == "ghost dog"
                    $image = './ascii/rachael.txt'
                    puts "Rachael text"
                    interview_module
                else
                    puts "I'm sorry to hear that. Let's get you dressed!"
                    clothes_module
                end
        elsif user_choice == 'a'
            puts "Two REM cycles? Awesome! Let's get you dressed!"
            clothes_module
        else
            puts "I'm sorry, what was that again?"
            sleep_module
        end
    end
    sleep_module
end

def clothes_module
    puts "
        What's your style for the day?
        
        a. Casual
        b. Business Casual
        c. Business Formal

        Enter your choice, a, b, or c?"

    user_choice = gets.chomp.downcase
    puts `clear`

    if user_choice == 'a'
        puts "Okay, if you're sure...

        (Somewhere a single tear rolls down Bryan's face.)

        Let's get your morning drink!"
        drink_module
    elsif user_choice == 'b'
        puts "Riding that line just right!
        
        Do you want to wear glasses for the first time?
        
        a. Yes
        b. No
        
        Enter your choice, a or b?"

        user_choice = gets.chomp.downcase
        puts `clear`

        if user_choice == 'a'
            $image = './ascii/bach.txt'
            puts "Bach text"
            interview_module
        else
            puts "Let's get your morning drink!"
            drink_module
        end
    elsif user_choice == 'c'
        puts "Check the reflection:
        
        Noice.
        Very noice.
        Let's get your morning drink!"
        drink_module
    elsif user_choice == 'jedi'
        $image = './ascii/ryan.txt'
            puts "Ryan text"
            interview_module
    else
        puts "I'm sorry, what was that again?"
        clothes_module
    end
end

def drink_module
    puts"
    Coffee or tea?

    a. Coffee
    b. Tea
        
    Enter your choice, a or b?"

    user_choice = gets.chomp.downcase
    puts `clear`

    if user_choice == 'a'
        puts "YOWZA! That's a jolt!

        Does it make you want to do anything special?
            
        a. Sing!
        b. Poop. Definitely poop.    
        c. Wait... what?
        
        Enter your choice, a, b, or c?"

        user_choice = gets.chomp.downcase
        puts `clear`

        if user_choice == 'a'
            $image = './ascii/joel.txt'
            puts "Joel text"
            interview_module
        elsif user_choice == 'b'
            $image = './ascii/diem.txt'
            puts "Diem text"
            interview_module
        elsif user_choice == 'c'
            puts "Don't worry about it.

            Did you make it in your own espresso machine?

            a. Yes
            b. No
        
            Enter your choice, a or b?"
            
            user_choice = gets.chomp.downcase
            puts `clear`

            if user_choice == "a"
                $image = './ascii/chuck.txt'
                puts "Chuck text"
                interview_module
            elsif user_choice == "b"
                puts "Okay. Let's go to your desk!"
                desk_module
            else
                puts "I'm sorry, let's start over."
                drink_module
            end
        end
    elsif user_choice == "b"
        puts "That leaf water sure does go down smooth...

            It's almost time!
            How do you feel?
            
            a. Confident! I think I might want to prepare other people for this very moment someday!
            b. Confident! It's just like an audition for a role!
            c. I have literally forgotten everything I've ever learned.
    
            Enter your choice, a, b, or c?"

            user_choice = gets.chomp.downcase
            puts `clear`

            if user_choice == 'a'
                $image = './ascii/sarah.txt'
                puts "Sarah text"
                interview_module
            elsif user_choice == 'b'
                $image = './ascii/drew.txt'
                puts "Drew text"
                interview_module
            elsif user_choice == 'c'
                puts "Meh, I'm sure it'll be fine."
                interview_module
            else
                puts "I'm sorry, let's start over."
                drink_module
            end
    elsif user_choice == "water"
        $image = './ascii/brian.txt'
        puts "Brian text"
        interview_module
    elsif user_choice == "pumpkin pie"
        $image = './ascii/andee.txt'
        puts "Andee text"
        interview_module
    else
        puts "I'm sorry, what was that again?"
        drink_module
    end
end

def desk_module
    puts "
    Two quick questions:
    Do you need to move it?
    And is it in a tree?
    
    a. I need to move it.
    b. It's in a tree.
    c. Okay, I can understand needing to move it. But why would it be in a tree?
    
    Enter your choice, a, b, or c?"

    user_choice = gets.chomp.downcase
    puts `clear`

    if user_choice == 'a'
        $image = './ascii/nate.txt'
        puts "Nate text"
        interview_module
    elsif user_choice == 'b'
        $image = './ascii/matt.txt'
        puts "Matt text"
        interview_module
    elsif user_choice == 'c'
        puts "It would take too long to explain.
        
        Let's go to the interview!"
        interview_module
    else
        puts "I'm sorry, what was that again?"
        desk_module
    end
end

def render_ascii_art filename
    File.readlines(filename) do |line|
    puts line
  end
end

def interview_module

    puts"
        Now's the time!
        Press RETURN to open zoom and turn on your video!"

    gets
    puts `clear`
    
    puts render_ascii_art $image
    puts"
        Looking GOOD!
        You're going to nail this!
        DELTA! DELTA! DELTA!
        LET'S GOOOOOOOOOOO!!!"

end

start
