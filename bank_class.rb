class BankAccount
    
        attr_accessor :name, :deposit, :balance, :withdraw

    
        def initialize name:nil, balance:nil, deposit:nil, withdraw:nil
            @deposit = deposit
            @balance = balance
            @withdraw = withdraw    
            @tr = 0
            # @history = []
            @history = {
                withdrawals: [],
                deposits: []
            }
            
        end

        public
            def sum(list_of_numbers)
                list_of_numbers.reduce(0) { |t, amount| t + amount }
            end

            def balance
                print "Your balance is $#{@balance}."
            end

            def name
                @name
            end

            def deposit amount
                @balance += amount
                @tr += amount
                self
                @history[:deposits] << @tr
                print "You deposited $#{amount}."
            end

            def withdraw pin_number, amount
                
                if pin_number == pin
                    @balance -= amount
                    self
                    puts "You withdrew $#{amount}."
                    
                else
                    puts pin_error

                end
            end

            # def tr
            #    @@tr 
            # end


        private
            def pin
                @pin = 1234
            end

            def pin_error
                return "Access denied: incorrect PIN."
            end 
end






