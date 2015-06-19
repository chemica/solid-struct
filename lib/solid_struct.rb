# Allow structs to be initialised using a hash
module SolidStruct
  VERSION = "0.0.2"

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

  def self.new(*args)
    NamedStruct.new(*args)
  end

  def self.build(hash)
    raise ArgumentError.new("Arguments must be defined as a hash") unless hash.is_a? Hash

    klass = NamedStruct.new(*hash.keys)
    klass.new(hash)
  end

end