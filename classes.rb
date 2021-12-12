class PLAYER
    def initialize (name)
        @name = name
        @defense = rand(10)
        @strength = rand(10)
        @luck = rand(10)
        @health = rand(30)
    end

    def name
        return @name
    end

    def defense
        return @defense
    end

    def strength
        return @strength
    end

    def luck
        return @luck
    end

    def health
        return @health
    end


    def damage
        @health -= 5
    end


    def attack (opp)
        if @luck >= rand(10)
            p "#{@name} has sucessfully attacked #{opp.name}"
            opp.damage
        else
            p "#{@name} missed the attack"
        end
    end

end