module Sexp

  class Bodies < Treetop::Runtime::SyntaxNode
    def to_array
      return self
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

end

# vim: filetype=ruby:syntax=ruby:ts=4:tw=0:sw=2:expandtab:norl:
