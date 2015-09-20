class OrangeTree

    def initialize
        @tree = "orange tree"
        @age = 0
        @height = 0
        @fruit = 0
        @fruitPicked = 0
        puts "Your " + @tree + " has been planted."
    end

    def age
        puts "Your " + @tree + " has lived for #{@age} years."
        @age = @age
        one_year_passes
    end

    def height
        puts "Your " + @tree + " has grown up to #{@height}."
        @height = @height
    end

    def count_the_oranges
      if @age == 35
        puts "Your tree is dead."
      else
        puts "Your " + @tree + " has #{@fruit} oranges."
        @fruit = @fruit
      end
    end

    def pick_an_orange
      if @age == 35
        puts "Your tree is dead."
      else
        safeFruitPicked = @fruitPicked #Для сохранения уже собранных фруктов
        puts "How many oranges do you want to pick?"
        @fruitPicked = @fruitPicked + gets.chomp.to_i #Берём цифры из введённой строки и возвращаем как инт
        if @fruitPicked > @fruit
          puts "You can't pick more oranges than there is on a tree."
          @fruitPicked = safeFruitPicked
        else
          puts "You've picked #{@fruitPicked} oranges."
          @fruit = @fruit - @fruitPicked
        end
      end
    end

    def taste #Попробовать апельсин на вкус
      if @fruitPicked > 0
        randomTaste = [true, false].sample
        if randomTaste == true
          puts "Tasty."
          @fruitPicked = @fruitPicked - 1
        else
          puts "Awful."
          @fruitPicked = @fruitPicked - 1
        end
      else
        puts "You haven't picked any oranges."
      end
    end

    def one_year_passes
      if @age == 35
        puts "Your tree is dead."
      else
        if @age >= 0
            @age += 1
        end

        if @height >= 0 and @height < 20
            @height = @height + 1
        else
            puts "Your " + @tree + " do not grow higher any more."
        end

        @fruit = 0

        if @age >= 7
          @fruit = @fruit + (@age * 2)
        end
      end
    end
end
