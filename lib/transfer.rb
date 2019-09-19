require_relative "bank_account"
class Transfer
  attr_accessor :sender, :receiver, :amount, :status


  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def self.valid?
    @sender.valid? == true && @receiver.valid? == true
  end
  
  

end
