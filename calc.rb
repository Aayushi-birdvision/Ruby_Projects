class SimpleCalculator
    ALLOWED_OPERATIONS = ['+', '/', '*'].freeze
    UnsupportedOperation = Class.new(StandardError)
    
    def self.calculate(first_operand, second_operand, operation)
      raise ArgumentError if (!first_operand.is_a? Integer) || (!second_operand.is_a? Integer)
    
      case ALLOWED_OPERATIONS.find{|i| i == operation} 
        when "+" then "#{first_operand} + #{second_operand} = #{first_operand+second_operand}"
        when "*" then "#{first_operand} * #{second_operand} = #{first_operand*second_operand}"
        when "/" 
           second_operand != 0 ? 
           "#{first_operand} / #{second_operand} = #{first_operand/second_operand}" :
           "Division by zero is not allowed." 
        else 
          raise UnsupportedOperation.new
      end
       
    end  
  end
  