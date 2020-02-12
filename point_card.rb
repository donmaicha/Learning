# チャージ式ポイントカードクラス
class Card
    attr_accessor :money, :point 

    def initialize(charge)
        @money = charge
        @point = 0
    end

    # @param amount [Integer] 支払金額
    #
    # @example
    #  card.use(2000)
    def use(amount)
        if amount < @point
            @point -= amount
        else
            @money -= amount
            @point += amount * 0.1
        end
        puts(@money)
        puts("*******")
        puts(@point)
        puts("+++++++")
    end

    # @param amount [Integer] 支払金額
    #
    # @example
    #  card.use(2000)
    def point_use(amount) 
        if @point < amount 
            puts("ポイント不足です")
            puts("~~~~~~~")
        else
            @point -= amount
        end
        puts(@money)
        puts("*******")
        puts(@point)
        puts("+++++++")
    end
end

card = Card.new(4000)
card.use(2000)
card.use(100)
card.point_use(200)
