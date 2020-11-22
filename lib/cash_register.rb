class CashRegister

    attr_accessor :total, :discount, :items, :last_item

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(item, price, quantity = 1)
        self.total += price * quantity
        quantity.times {items << item}
        self.last_item = price * quantity
    end

    def apply_discount
        if discount != 0
        self.total -= total * discount/100
        "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.items.shift
        self.total -= self.last_item
    end


end
