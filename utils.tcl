package provide wiringpi 1.0

set INPUT 0
set OUTPUT 1
set PWM_OUTPUT 2

set LOW 0
set HIGH 1

proc on { pins } {
  foreach pin $pins {
    digitalWrite $pin 1
  }
}

proc off { pins } {
  foreach pin $pins {
    digitalWrite $pin 0
  }
}

proc mode { pins mode } {
  foreach pin $pins {
    pinMode $pin $mode
  }
}

proc flash { pins {delay 100} {repeat 1} } {
  for {set count 0} {$count < $repeat} {incr count} {
    foreach pin $pins {
      on $pin
    }
    delay $delay
    foreach pin $pins {
      off $pin
    }
    delay $delay
  }
}
      
      
