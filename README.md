So far this tree only make Clock Work MOD

You can download the built version here

http://androidforums.com/zte/828110-clockworkmod-zte-radiant-z740.html


The recovery image that gets created needs to be modded before the phone will boot it, you can use a hex editor or run this command

printf '\x82\' | dd of=recovery.img bs=1 seek=23 count=1 conv=notrunc

I will try to get this mod automated at some later date


