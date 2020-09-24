# create the main function that starts the story
def main

    # ***************TITLE & BACK STORY***************
    # displays the title and back story
    storyline =  'WELCOME TO YOUR COVID-19 ADVENTURE
    You are a type A germaphobe 3 weeks into the COVID pandemic
    It\'s a normal tuesday morning you wake up get breakfast you start getting ready for your normal virtual work day
    As you look into the mirror you realize you are not camera ready
    You take a look at the clock and you realize you have 1 hour before work starts
    Because of your personality you need to get a haircut...NOW!!
    You think to yourself, "If I hurry I can get a haircut and make it back in time".....as long as nothing happens
    In a rush you quickly grab your hat and keys and your homeade banana bread and rush out the door.
    Hit enter to continue.'

    # puts storyline
    storyline.each_char do |value|
        putc value
        sleep 0.01
    end

    gets
    puts `clear`

    # call the function that displays the first obstacle
    first_obstacle
end

def render_ascii_art filename
    File.readlines(filename) do |line|
    puts line
  end
end

# Restart game method
def restart
    puts 'Would you like to quit (q) or restart (r) ?'

    user_choice = gets.chomp.downcase
    puts `clear`

    if user_choice == 'q'
        puts 'THANKS FOR PLAYING!!'
    elsif user_choice == 'r'
        main
    else
        'Not a valid input. Please enter either "q" or "r".'
        restart
    end
end

# Define the first options function

#******************First OBSTACLE*****************

def first_obstacle

    puts 'Your favorite barber is only a few blocks away. How do you want to get there?'
    def first_obstacle_options
        #****************FIRST Obstacle OPTIONS***************
        puts render_ascii_art './bike.txt'
        puts '
        a. Drive your car
        b. Public transportation
        c. Walk

        Enter your choice, a, b, or c:'

        # get the users's choice
        user_choice = gets.chomp.downcase
        puts `clear`


        if user_choice == 'a'
            puts render_ascii_art './car.txt'
            puts 'Your battery is dead since you havent driven in 3 weeks...TRY AGAIN!
            Hit enter to continue.'
            gets
            puts `clear`
            first_obstacle_options
        elsif user_choice == 'b'
            puts render_ascii_art './bus.txt'
            puts 'Someone sneezes on you and you go home to shower...TRY AGAIN!
            Hit enter to continue.'
            gets
            puts `clear`
            first_obstacle_options
        elsif user_choice == 'c'
            puts "You promptly start walking down the sidewalk thinking to yourself, \"This won't take very long!\""
            second_obstacle
        else
            puts 'Not a valid input try again'
            first_obstacle_options
        end
    end
    first_obstacle_options
end

#******************Second OBSTACLE*****************

def second_obstacle
    puts 'Five mins into your walk you stumble across a crowd of people waiting in line outside the store.  How do you get through the crowd?'

    def second_obstacle_options
        #****************SECOND Obstacle OPTIONS***************
        puts render_ascii_art './crowd.txt'
        puts '
        a. You politely ask the crowd of people to move
        b. You offer your homemade banana bread
        c. You ask them what are they standing in line for

        Enter your choice, a, b, or c:'

        # get the users's choice
        user_choice = gets.chomp.downcase
        puts `clear`


        if user_choice == 'a'
            puts render_ascii_art './punch.txt'
            puts 'You get a haymaker to the face, you go home to disinfect to clean your bloody nose...TRY AGAIN! Hit enter key to continue...'
            gets
            puts `clear`
            second_obstacle_options
        elsif user_choice == 'b'
            puts 'The crowd successfully parts and you continue your journey.'
            third_obstacle
        elsif user_choice == 'c'
            puts render_ascii_art './tp.txt'
            puts 'They say TP and you quickly realize you need TP so you stand in line to buy TP - you go home...TRY AGAIN! Hit enter key to continue..'
            gets
            puts `clear`
            second_obstacle_options
        else
            puts 'Not a valid input try again'
            second_obstacle_options
        end
    end
    second_obstacle_options
end
#******************Third OBSTACLE*******************

def third_obstacle
    puts 'Suddenly a tiger appears. You figure that the tiger escaped from the SD zoo because of budget cuts. The tiger is approaching but hasnt spotted you yet, what do you do?'



    def third_obstacle_options
        #****************THIRD Obstacle OPTIONS***************
        puts render_ascii_art './tiger.txt'
        puts '
        a. You run away out of fear
        b. You pick up the nearest stick and try and fight it off
        c. You channel your inner tiger king

        Enter your choice, a, b, or c:'

        # get the users's choice
        user_choice = gets.chomp.downcase
        puts `clear`

        if user_choice == 'a'
            puts render_ascii_art './run.txt'
            puts 'You go home and never get your hair cut...TRY AGAIN! Hit enter key to continue...'
            gets
            puts `clear`
            third_obstacle_options
        elsif user_choice == 'b'
            puts render_ascii_art './fight.txt'
            puts 'Even though you thought you were tough as nails to just walk up to a tiger, you immediately mauled by the tiger. In the process, you get your hair ripped out...no need for haircut...YOU LOSE. TRY AGAIN! Hit enter key to continue...'
            gets
            puts `clear`
            third_obstacle_options
        elsif user_choice == 'c'
            puts 'You befriended the tiger...thanks Netflix...and you continue your journey!'
            final_obstacle
        else
            puts 'Not a valid input try again'
            third_obstacle_options
        end
    end
    third_obstacle_options
end

#*****************FINAL OBSTACLE*******************

def final_obstacle
    puts 'You finally make it to the barber shop and you see the notice on the door NO MASK NO ENTRY....what do you do?'

    def final_obstacle_options
        #****************THIRD Obstacle OPTIONS***************
        puts render_ascii_art './sign.txt'
        puts '
        a. Pretend you didnt see it and walk in anyways.
        b. Feeling defeated, you just go home.
        c. Call your newly befriended tiger to intimidate the owner to give you a haircut.

        Enter your choice, a, b, or c:'

        # get the users's choice
        user_choice = gets.chomp.downcase
        puts `clear`

        if user_choice == 'a'
            puts render_ascii_art './jail.txt'
            puts 'You are arrested and you go to jail...“NO HAIRCUT FOR YOU!“...TRY AGAIN!!
            Hit enter to continue.'
            gets
            puts `clear`
            final_obstacle_options
        elsif user_choice == 'b'

            puts 'You arrive at home and tell your roommate about your adventure you just had. They tell you that they picked up a new shelter-in-place hobby of cutting hair. "You could have just asked me for a haircut! :)" they said. Exasperated, but relieved, you get your haircut and make it to work in time.'
            puts render_ascii_art './win.txt'
            restart
        elsif user_choice == 'c'
            puts render_ascii_art './jail.txt'
            puts 'Your barber calls the cops -- and animal control. Your tiger friend is tranquilized and you are tazed. You go to jail and do not get your haircut. YOU LOSE!!...TRY AGAIN! Hit enter key to continue...'
            gets
            puts `clear`
            final_obstacle_options
        else
            puts 'Not a valid input try again'
            final_obstacle_options
        end
    end
    final_obstacle_options
end

# call the main function
main
