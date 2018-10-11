class Transfer
  
  attr_accessor :sender, :receiver, :transfer_amount, :status 
  
  def initialize(sender, receiver, transfer_amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @transfer_amount = transfer_amount
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
    sender.balance = sender.balance - @transfer_amount
    receiver.balance = receiver.balance + @transfer_amount
  else 
    NIL
  end
end

def reverse_transaction
end

def reverse_transfer
  
end

end
