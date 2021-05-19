onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib dvi2rgb_1_opt

do {wave.do}

view wave
view structure
view signals

do {dvi2rgb_1.udo}

run -all

quit -force
