

class BankAccount
    attr_accessor :deposit, :balance, :status
    attr_reader :name

    def initialize(name)
        @name = name
        @balance = 1000
        @status = "open"
    end

    def deposit(amount)
        @balance += amount
    end

    def display_balance
        "Your balance is $#{self.balance}."
    end

    def valid?
        if @status == "open" && @balance > 0 
            true
        else
            false
        end
    end

    def close_account
        self.status = "closed"
    end
end
