module Sexp

  class IntegerLiteral < Treetop::Runtime::SyntaxNode
    def to_array
      raise
      return self.text_value.to_i
    end
  end

  class Bodies < Treetop::Runtime::SyntaxNode
    def to_array
      return self
    end
  end

  class Digits < Treetop::Runtime::SyntaxNode
    def to_array
      raise
    end
  end

  class Ifdef < Treetop::Runtime::SyntaxNode
    def to_array
      raise
    end
  end

  class Ifndef < Treetop::Runtime::SyntaxNode
    def to_array
      raise
    end
  end

  class Endif < Treetop::Runtime::SyntaxNode
    def to_array
      raise
    end
  end

  class BlankLine < Treetop::Runtime::SyntaxNode
    def to_array
      raise
    end
  end

  class EndifLine < Treetop::Runtime::SyntaxNode
    def to_array
      raise
    end
  end

  class IfdefLine < Treetop::Runtime::SyntaxNode
    def to_array
      raise
    end
  end

  class IfdefBlocks < Treetop::Runtime::SyntaxNode
    def to_array
      raise
    end
  end

  class Body < Treetop::Runtime::SyntaxNode
    def to_array
      raise
      return self.text_value
    end
  end

  class StringLiteral < Treetop::Runtime::SyntaxNode
    def to_array
      raise
      return eval self.text_value
    end
  end

  class FloatLiteral < Treetop::Runtime::SyntaxNode
    def to_array
      raise
      return self.text_value.to_f
    end
  end

  class Identifier < Treetop::Runtime::SyntaxNode
    def to_array
      raise
      return self.text_value.to_sym
    end
  end

  class Expression < Treetop::Runtime::SyntaxNode
    def to_array
      raise
      return self.elements[0].to_array
    end
  end

  class Body < Treetop::Runtime::SyntaxNode
    def to_array
      raise
      return self.elements.map {|x| x.to_array}
    end
  end

  class CommentString < Treetop::Runtime::SyntaxNode
    def to_array
      raise
      return self.elements
    end
  end

  class PortString < Treetop::Runtime::SyntaxNode
    def to_array
      raise
      return self.elements
    end
  end

  class CommentPortString < Treetop::Runtime::SyntaxNode
    def to_array
      raise
      return self.elements
    end
  end

  class WireName < Treetop::Runtime::SyntaxNode
    def to_array
      raise
      return self.elements
    end
  end

  class Intf < Treetop::Runtime::SyntaxNode
    def to_array
      raise
      return self.elements
    end
  end

  class IntfWithSize < Treetop::Runtime::SyntaxNode
    def to_array
      raise
      return self.elements
    end
  end

  class Interface < Treetop::Runtime::SyntaxNode
    def to_array
      raise
      return self.elements
    end
  end

  class OutputDir < Treetop::Runtime::SyntaxNode
    def to_array
      raise
      return self.elements
    end
  end

  class InputDir < Treetop::Runtime::SyntaxNode
    def to_array
      raise
      return self.elements
    end
  end

  class IfWidth < Treetop::Runtime::SyntaxNode
    def to_array
      raise
      return self.elements
    end
  end

end

# vim: filetype=ruby:syntax=ruby:ts=4:tw=0:sw=2:expandtab:norl:
