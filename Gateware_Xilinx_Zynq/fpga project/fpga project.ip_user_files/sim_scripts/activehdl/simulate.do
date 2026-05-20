transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+clockdivider_2out_TB  -L xil_defaultlib -L xilinx_vip -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.clockdivider_2out_TB xil_defaultlib.glbl

do {clockdivider_2out_TB.udo}

run 1000ns

endsim

quit -force
