So far this tree only make Clock Work MOD

The recovery image that gets created needs to be modded before the phone will boot it, you can use a hex editor or run this command

printf '\x82\' | dd of=recovery.img bs=1 seek=23 count=1 conv=notrunc

I will try to get this mod automated at some later date


