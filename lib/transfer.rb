class Transfer
  
  attr_accessor :sender, :receiver, :transfer_amount, :status 
  
  def initialize(sender, receiver, transfer_amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @transfer_amount = transfer_amount
  end 
  
def valid?
end

def execute_transaction
  
end

def reverse_transaction
end

def reverse_transfer
  
end

end
