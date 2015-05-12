module C8dasm

  # Read a Chip-8 binary file.
  #
  # Examples
  #
  #   reader = Chip8Reader.new('./MAZE')
  #   p reader.opcodes.first
  #   #=> "a21e"
  class Chip8Reader

    # Creates a Chip8Reader instance.
    #
    # filename - The String name of the binary file to read.
    def initialize(filename)
      @file = File.new(filename, 'rb')
      @opcodes = []
      binaries_to_opcodes
      @file.close
    end

    # Returns an Array of String Chip-8 opcodes.
    attr_reader :opcodes

    private

    def binaries_to_opcodes
      while true do
        begin
          @opcodes << sprintf("%02x%02x", @file.readbyte, @file.readbyte)
        rescue EOFError
          break
        end
      end
    end

  end

end
