module TimeHelper
  def number_to_str_time(number)
    time_arr = number.to_s.split(".")
    second_part = time_arr[1]&.include?("5") ? "30" : "00"
    "#{time_arr[0]}.#{second_part}"
  end

  def str_time_to_number(str_time)
    time_arr = str_time.to_s.split(":")
    second_part = time_arr[1]&.include?("3") ? 5 : 0
    "#{time_arr[0]}.#{second_part}".to_f
  end
end
