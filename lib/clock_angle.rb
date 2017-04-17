
class String
  define_method(:clock_angle) do
    split = self.split(':')
    hours = split[0].to_f()
    minutes = split[1].to_f()

    h_angle = hours*30
    if hours.==(12)
      h_angle = 0
    end

    m_angle = minutes*6

    answer = 0
    angle_difference = (h_angle-m_angle).abs
    if angle_difference.>(180)
      answer = 360 - angle_difference
    else
      answer = angle_difference
    end
    answer
  end
end
