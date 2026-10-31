onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib design_dds_opt

do {wave.do}

view wave
view structure
view signals

do {design_dds.udo}

run -all

quit -force
