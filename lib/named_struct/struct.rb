require "named_struct/version"

# Allow structs to be initialised using a hash
class NamedStruct < Struct
  # Override the initialize to handle hashes of named parameters
  def initialize *args
    opts = args.last.is_a?(Hash) ? args.pop : Hash.new
    super *args
    opts.each_pair do |k, v|
      self.send "#{k}=", v
    end
  end
end

