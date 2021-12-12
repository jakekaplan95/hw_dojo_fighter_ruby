require "./classes.rb"


Jake = PLAYER.new('Jake')
Ethan = PLAYER.new('Ethan')

while true do
    p "Ethan's Life: #{Ethan.health} - #{Jake.name}'s Life: #{Jake.health}"
    p "Ethan's Luck: #{Ethan.luck} - #{Jake.name}'s Luck: #{Jake.luck}"

    p "do you want to [a]ttack or [r]un"
    input = gets.chomp

    p input

    if input === "a"
        Jake.attack(Ethan)
        Ethan.attack(Jake)
    end

    if input === "r"
        if rand(100) > 60
            p "You have escaped!"
            break
        else
            p "You fail to escape"
        end
    end

    if Jake.health <= 0
        p "#{Jake.name} has blacked out, YOU LOSE"
        break
    end

    if Ethan.health <=0
        p "Ethan has blacked out, YOU WIN"
        break
    end

end
