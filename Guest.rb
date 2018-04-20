class Guest
  attr_reader(:name, :money)
  def initialize(name, money)
    @name = name
    @money = money
  end

  def has_enough_money?(amount)
    @money >= amount
  end

  def pay(amount)
    return false if !has_enough_money?(amount)
    @money -= amount

    return true
  end
end