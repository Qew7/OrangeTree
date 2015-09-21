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
       # Выражение не имеет смысла, т.к. @age является переменной экземпляра,
         # к ней можно обращаться внутри объекта (экземпляра) 
       ### @age = @age
       # Метод age является методом доступа к свойству объекта, не стоит связывать его с методом,
        # который изменяет состояние объекта
       ### one_year_passes
    end

    def height
        puts "Your " + @tree + " has grown up to #{@height}."
        ### @height = @height
    end

    def count_the_oranges
     # Данный метод можно более изящно переписать используя тернарный оператор
     ### if @age == 35
     ###   puts "Your tree is dead."
     ### else
     ###   puts "Your " + @tree + " has #{@fruit} oranges."
     ###   @fruit = @fruit
     ### end
     puts (@age == 35 ? "Your tree is dead." : "Your " + @tree + " has #{@fruit} oranges.")
     # Или опустив скобки:
      # puts @age == 35 ? "Your tree is dead." : "Your " + @tree + " has #{@fruit} oranges."
    end

    def pick_an_orange
      if @age == 35
        puts "Your tree is dead."
      else
        safeFruitPicked = @fruitPicked # Для сохранения уже собранных фруктов
        puts "How many oranges do you want to pick?"
        @fruitPicked = @fruitPicked + gets.chomp.to_i # Берём цифры из введённой строки и возвращаем как инт
        if @fruitPicked > @fruit
          puts "You can't pick more oranges than there is on a tree."
          @fruitPicked = safeFruitPicked
        else
          puts "You've picked #{@fruitPicked} oranges."
          @fruit = @fruit - @fruitPicked
        end
      end
    end

    def taste # Попробовать апельсин на вкус
      if @fruitPicked > 0
        randomTaste = [true, false].sample
        # Один из главных принципов в программирование и особенно в Ruby - это DRY (don't repeat yourself)
          # Поэтому выражение @fruitPicked = @fruitPicked - 1, которое выполняется в любом случае,
          # можно вынести за пределы условия, а само условие переписать используя тернарный оператор
       ### if randomTaste == true
       ###   puts "Tasty."
       ###   @fruitPicked = @fruitPicked - 1
       ### else
       ###   puts "Awful."
       ###   @fruitPicked = @fruitPicked - 1
       ### end
        puts randomTaste ? "Tasty." : "Awful."
        @fruitPicked = @fruitPicked - 1
      else
        puts "You haven't picked any oranges."
      end
    end

    def one_year_passes
      if @age == 35
        puts "Your tree is dead."
      else
        # Короткие, однострочные условия можно писать в одну строку
        ### if @age >= 0
        ###    @age += 1
        ### end
        @age += 1 if @age >= 0

        if @height >= 0 and @height < 20
          @height = @height + 1
        else
          puts "Your " + @tree + " do not grow higher any more."
        end

        @fruit = 0

        ### if @age >= 7
        ###  @fruit = @fruit + (@age * 2)
        ### end
        @fruit = @fruit + (@age * 2) if @age >= 7
      end
    end
end

# @tree = OrangeTree.new
# @tree.age
# @tree.count_the_oranges
# @tree.one_year_passes
# @tree.age
# @tree.count_the_oranges
# @tree.one_year_passes
# @tree.age 
# @tree.count_the_oranges
# 5.times { @tree.one_year_passes }
# @tree.age
# @tree.count_the_oranges
# @tree.pick_an_orange
# @tree.count_the_oranges
# 30.times { @tree.one_year_passes }

