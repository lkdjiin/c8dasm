module C8dasm

  class Commente < CommentBase

    def to_s
      if kk == 'a1'
        "Skip next inst. if V#{x} key is not pressed."
      elsif kk == '9e'
        "Skip next inst. if V#{x} key is pressed."
      end
    end

  end
end

