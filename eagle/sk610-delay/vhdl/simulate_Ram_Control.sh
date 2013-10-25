rm *.cf *.ghw
echo "-----Analysis------"
ghdl -a Ram_Control.vhd
ghdl -a Ram_Control_tb.vhd
echo "-----Elaboration------"
ghdl -e Ram_Control_tb
#ghdl -r Ram_Control_tb --vcd=Ram_Control_tb.vcd
echo "-----Wave------"
ghdl -r Ram_Control_tb --stop-time=1000us --wave=Ram_Control_tb.ghw
#/Applications/gtkwave.app/Contents/Resources/bin/gtkwave Ram_Control_tb.vcd
#/Applications/gtkwave.app/Contents/Resources/bin/gtkwave Ram_Control_tb.ghw


