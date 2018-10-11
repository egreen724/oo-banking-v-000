class Transfer
  
  attr_accessor :sender, :receiver, :amount, :status 
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end 
  
def valid?
  if sender.valid? && receiver.valid?
    true 
  else 
    false 
  end
end

def execute_transaction
  if valid? == true 
    sender.balance = sender.balance - @amount
    receiver.balance = receiver.balance + @amount
    self.status = "complete"
  else 
    NIL
  end
end

def reverse_transaction
end

def reverse_transfer
  
end

end
