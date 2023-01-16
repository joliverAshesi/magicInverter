NAME=mosfet

magic:
	# for rcfile to work PDK_ROOT must be set correctly
	magic -rcfile $(PDK_ROOT)/sky130A/libs.tech/magic/sky130A.magicrc $(NAME).mag
	# now in the command window type:
	# extract
	# ext2spice lvs
	# ext2spice cthresh 0
	# ext2spice

clean:
	rm -f $(NAME).spice model.spice $(NAME).ext

phony: clean
