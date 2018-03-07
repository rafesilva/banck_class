require_relative 'bank_class'

class Client < BankAccount

    # def tr
    #     @@tr += @balance
    #     self
    # end

end

account = BankAccount.new(name:"Sam", deposit:0, balance:0, withdraw:0)


account.name = "Sally"

puts account.name
puts account.inspect
puts account.deposit(50)
puts account.deposit(100)


puts account.withdraw(1234, 50)
# puts account.balance

# puts account.tr

puts account.inspect
