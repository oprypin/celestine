module Celestine::Modules::Animate::Motion
  module Attrs
    MPATH = "path"
    ROTATE = "rotate"
    REPEAT_COUNT = "repeatCount"
    REPEAT_DURATION = "repeatDur"
    DURATION = "dur"
    VALUES = "values"
    FROM = "from"
    TO = "to"
    BY = "by"
    KEY_TIMES = "keyTimes"
    KEY_POINTS = "keyPoints"
    KEY_SPLINES = "keySplines"
    MIN = "min"
    MAX = "max"
    ACCUMULATE = "accumulate"
    ADDITIVE = "additive"
    FILL = "fill"
  end


  def animate_motion(&block : Celestine::Animate::Motion -> Celestine::Animate::Motion)
    animate = yield Celestine::Animate::Motion.new
    animate.draw(inner_elements)
  end
end