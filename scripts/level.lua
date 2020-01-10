function conky_get_battery_level()
  local tmpfile = '/tmp/battery_level.txt'
  os.execute('sh $HOME/.conky/scripts/battery_level.sh'..' > '..tmpfile)
  local f = io.open(tmpfile)
  local level = ""
  
  for line in f:lines() do
    level = line
  end
  
  return level
end

function conky_get_color()
  local retLevel = conky_get_battery_level()
  local level = tonumber(retLevel)
  local color = '#B7E0E2'
  if level < 20 then
    color = '#ff0000'
  else if level < 40 then
    color = '#FF8C00'
  end end

  return color
end

function conky_get_indicator()
  local retLevel = conky_get_battery_level()
  local level = tonumber(retLevel)
  local indicator =""
  if level < 15 then
    indicator = ""
    else if level < 35 then
      indicator ="" 
      else if level < 60 then
        indicator = ""
        else if level < 80 then
          indicator = ""
        end
      end
    end
  end
  return indicator
end
