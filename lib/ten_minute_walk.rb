def ten_minute_walk(directions)
  if directions.count != 10 then
    false
  else
    if directions.count('n') != directions.count('s') || directions.count('w') != directions.count('e')
      false
    else
      true
    end
  end
end
