onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib systolic_control_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {systolic_control.udo}

run 1000ns

quit -force
