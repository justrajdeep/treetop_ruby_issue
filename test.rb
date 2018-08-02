#!/bin/env ruby
#
require "yaml"
require 'treetop'
require File.expand_path(File.join(File.dirname(__FILE__), 'node_extensions.rb'))

class Parser # {{{

  @@base_path = File.expand_path(File.dirname(__FILE__)) 

  # Load our custom syntax node classes so the parser can use them

  # Load the Treetop grammar from the 'sexp_parser' file, and 
  # create a new instance of that parser as a class variable 
  # so we don't have to re-create it every time we need to 
  # parse a string
  Treetop.load(File.expand_path(File.join(@@base_path, 'sexp_parser.treetop')))
  @@parser = SexpParser.new

  # {{{
  @@my_data =<<-STR
    // Port.
    input         CLK;

    // Port.
    input         REFCLK;

    // Port.
    input [ 41:0] mem_power_ctrl;
    output data;
  STR
  # }}}

  def self.parse()
    # Pass the data over to the parser instance
    tree = @@parser.parse(@@my_data, :consume_all_input => true)

    # If the AST is nil then there was an error during parsing
    # we need to report a simple error message to help the user
    if(tree.nil?)
      raise Exception, "Parse error at offset: #{@@parser.index} #{@@parser.failure_reason}"
    else
      # tree.to_file(write_file)
    end
    # self.clean_tree(tree)
    return tree.to_array
  end

  private

  def self.clean_tree(root_node)
    return if(root_node.elements.nil?)
    root_node.elements.delete_if{|node| node.class.name == "Treetop::Runtime::SyntaxNode"}
    root_node.elements.each{|node| self.clean_tree(node)}
  end

end # }}}

p Parser.parse()

