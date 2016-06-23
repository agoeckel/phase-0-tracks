race = {
  'moto1' => [
    'Ryan Rodgers',
    'Chris Douglas',
    'Luke Perry',
    'Ben Ward',
    'Jeff Resnick'
    ],
  'moto2' => [
    'Glenn Tarr',
    'Brendon Connors',
    'Rick Block',
    'Greg Jackson',
    'Flinn Sargon'
    ],
  'moto3' => [
    'Ryan Dungy',
    'Brett Lodger',
    'Trent Flether',
    'Peter Quick'
  ],
  'Top 3 winners' => [
    'First Place' => [],
    'Second Place' => [],
    'Third Place' => []
  ]
}

race['Top 3 winners'][0]['First Place'] << race['moto1'][2]
race['Top 3 winners'][0]['First Place'] << race['moto2'][0]
race['Top 3 winners'][0]['First Place'] << race['moto3'][3]
race['Top 3 winners'][0]['Second Place'] << race['moto2'][1]
race['Top 3 winners'][0]['Third Place'] << race['moto3'][0]

race['Top 3 winners'][0]['First Place'].each do |name|
  name.upcase!
end

race['moto1'].delete_if {|name| name == 'LUKE PERRY'}
race['moto2'][0].replace('Kirk Little')
race['moto3'] << 'Patrick Hue'
puts race['moto2'].first

puts race