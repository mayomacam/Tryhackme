port 80: http://10.10.219.99/
The nightmare begin
July 1998, Evening
The STARS alpha team, Chris, Jill, Barry, Weasker and Joseph is in the operation on searching the STARS bravo team in the nortwest of Racoon city.
Unfortunately, the team was attacked by a horde of infected zombie dog. Sadly, Joseph was eaten alive.
The team decided to run for the nearby mansion and the nightmare begin..........

here team name :- STARS alpha team

=======================================================================================================================================================================
http://10.10.219.99/mansionmain/

main hall

The team reach the mansion safe and sound. However, it appear that Chris is missing
Jill try to open the door but stopped by Weasker
Suddenly, a gunshot can be heard in the nearby room. Weaker order Jill to make an investigate on the gunshot. Where is the room?
==============================================
when i inspect element i got 
<!-- It is in the /diningRoom/ -->
=======================================================================================================================================================================
http://10.10.219.99/diningRoom/
Dining room

After reaching the room, Jill and Barry started their investigation
Blood stein can be found near the fireplace. Hope it is not belong to Chris.
After a short investigation with barry, Jill can't find any empty shell. Maybe another room?
There is an emblem on the wall, will you take it? YES
=============================================

when i inspect element i got.
<!-- SG93IGFib3V0IHRoZSAvdGVhUm9vbS8= -->

with base64 it give:- How about the /teaRoom/

=====================================================================================================================================================================
http://10.10.219.99/teaRoom/
The nightmare begin

What the freak is this! This doesn't look like a human.
The undead walk toward Jill. Without wasting much time, Jill fire at least 6 shots to kill that thing
In addition, there is a body without a head laying down the floor
After the investigation, the body belong to kenneth from Bravo team. What happened here?
After a jiff, Barry broke into the room and found out the truth. In addition, Barry give Jill a Lockpick.
Barry also suggested that Jill should visit the /artRoom/
===============================================
when we inspect element i got master_of_unlock.html .
when we visit the link i get one line.
<p>lock_pick{037b35e2ff90916a9abf99129c8e1837}</p>

===============================================
now we go to next room... /artRoom/

====================================================================================================================================================================
http://10.10.219.99/artRoom/
Art room
A number of painting and a sculpture can be found inside the room
There is a paper stick on the wall, Investigate it? YES
===============================================
when we inspect element we got MansionMap.html.

====================================================================================================================================================================
http://10.10.219.99/artRoom/MansionMap.html
```
Look like a map

Location:
/diningRoom/
/teaRoom/
/artRoom/
/barRoom/
/diningRoom2F/
/tigerStatusRoom/
/galleryRoom/
/studyRoom/
/armorRoom/
/attic/
```
we got all rooms(dirs names)

====================================================================================================================================================================
http://10.10.219.99/barRoom/
Bar room entrance
Look like the door has been locked
It can be open by a lockpick
=====================================================
we need to enter lockpick here.
lock_pick{037b35e2ff90916a9abf99129c8e1837}
after enter it we got into room.

====================================================================================================================================================================
http://10.10.219.99/barRoom357162e3db904857963e6e0b64b96ba7/
Bar room
what a messy bar room
A piano can be found in the bar room
Play the piano?
Also, you found a note that written as "moonlight somata", read it? READ
=====================================================
we need piano key here . after inspecting we got that there is link musicNote.html.

====================================================================================================================================================================
http://10.10.219.99/barRoom357162e3db904857963e6e0b64b96ba7/musicNote.html

<p>Look like a music note</p>

NV2XG2LDL5ZWQZLFOR5TGNRSMQ3TEZDFMFTDMNLGGVRGIYZWGNSGCZLDMU3GCMLGGY3TMZL5
=====================================================
after decoding it from base32 we get

music_sheet{362d72deaf65f5bdc63daece6a1f676e}

let's enter it into piano and see.
====================================================================================================================================================================
http://10.10.219.99/barRoom357162e3db904857963e6e0b64b96ba7/barRoomHidden.php
Secret bar room
There is a gold emblem embedded on the wall
Will you take it? YES

=====================================================
after inspecting we got gold_emblem.php let's see is there anything.

====================================================================================================================================================================
http://10.10.219.99/barRoom357162e3db904857963e6e0b64b96ba7/gold_emblem.php
<p>gold_emblem{58a8c41a9d08b8a4e38d02a4d7ff4843}</p>
<p>Look like you can put something on the emblem slot, refresh the previous page</p>

============================================================
we got new key.

====================================================================================================================================================================
http://10.10.219.99/barRoom357162e3db904857963e6e0b64b96ba7/barRoomHidden.php
secret bar room
 There is an emblem slot on the wall, put the emblem? 
==========================================================
now we need to put emblem to see where we go.

====================================================================================================================================================================
http://10.10.219.99/barRoom357162e3db904857963e6e0b64b96ba7/emblem_slot.php
nothing happen 
=============================
got nothing we have to get back.


====================================================================================================================================================================
http://10.10.219.99/diningRoom2F/
Dining room 2F
Once Jill reach the room, she saw a tall status with a shiining blue gem on top of it. However, she can't reach it

================================================================
when we inspect element we got ..
	<!-- Lbh trg gur oyhr trz ol chfuvat gur fgnghf gb gur ybjre sybbe. Gur trz vf ba gur qvavatEbbz svefg sybbe. Ivfvg fnccuver.ugzy -->       

after decoding rot13 we got...
You get the blue gem by pushing the status to the lower floor. The gem is on the diningRoom first floor. Visit sapphire.html 

====================================================================================================================================================================
http://10.10.219.99/diningRoom/sapphire.html

blue_jewel{e1d457e96cac640f863ec7bc475d48aa} 
================================================
we got jewel and we have to go back again.
====================================================================================================================================================================
http://10.10.219.99/tigerStatusRoom/
Tiger status room

You reached a small room with a tiger status
Look like you can put a gem on the tiger's eye
=================================================
while inspect element we got gem.php.
we need to put a gem on tiger eye to see what's next. let's try with blue jewel.

====================================================================================================================================================================
http://10.10.219.99/tigerStatusRoom/gem.php

nothing happen
================================================

onto nextone
====================================================================================================================================================================
http://10.10.219.99/galleryRoom/
Gallerty
Upon Jill walk into the room, she saw a bunch of gallery and zombie crow in the room
Nothing is interesting, expect the note on the wall
Examine the note? EXAMINE
===================================================
when inspecting element we got note.txt. let's see what we got.


====================================================================================================================================================================
http://10.10.219.99/galleryRoom/note.txt
```
crest 2:
GVFWK5KHK5WTGTCILE4DKY3DNN4GQQRTM5AVCTKE
Hint 1: Crest 2 has been encoded twice
Hint 2: Crest 2 contanis 18 letters
Note: You need to collect all 4 crests, combine and decode to reavel another path
The combination should be crest 1 + crest 2 + crest 3 + crest 4. Also, the combination is a type of encoded base and you need to decode it
```
============================================================

we got following note.
after decoding crest with base 32 then base58 we got:-
h1bnRlciwgRlRQIHBh


now we have to choose new again.
====================================================================================================================================================================
http://10.10.219.99/studyRoom/
Study room entrance

Look like the door has been locked
A helmet symbol is embedded on the door 

============================================================

may be need to lockpick door again.
lock_pick{037b35e2ff90916a9abf99129c8e1837}

we reach too
====================================================================================================================================================================
http://10.10.219.99/studyRoom/unlock_door.php

Look like it doesn't fit the lock. 
=============================================================
again we have to move to new.

====================================================================================================================================================================
http://10.10.219.99/armorRoom/

Armor room entrance

Look like the door has been locked
A shield symbol is embedded on the door 
=============================================================

mmaybe we need sheild key but let's try with loclpick key.

http://10.10.219.99/armorRoom/unlock_door.php

Look like it doesn't fit the lock.
so again on next for until we have all the key.
====================================================================================================================================================================
http://10.10.219.99/attic/
Attic entrance

Look like the door has been locked
A shield symbol is embedded on the door 

===========================================================
again we don't have key to open it.



====================================================================================================================================================================
now on ftp
we can't do that need user and pass.
let's review all the things again.
i haven't go to emblem.php from dining room.
====================================================================================================================================================================
http://10.10.219.99/diningRoom/emblem.php

emblem{fec832623ea498e20bf4fe1821d58727}
Look like you can put something on the emblem slot, refresh /diningRoom/
=======================================================
when we back on dining room there's a slot for emblem.


====================================================================================================================================================================
http://10.10.219.99/diningRoom/emblem_slot.php
nothing happen when we use current emblem.
let's try with golden emblem.

================================================================================================
http://10.10.219.99/diningRoom/emblem_slot.php

klfvg ks r wimgnd biz mpuiui ulg fiemok tqod. Xii jvmc tbkg ks tempgf tyi_hvgct_jljinf_kvc

=============================================
with decoder.fr
klfvg ks r wimgnd biz mpuiui ulg fiemok tqod. Xii jvmc tbkg ks tempgf tyi_hvgct_jljinf_kvc
:- there is a shield key inside the dining room. The html page is called the_great_shield_key

key:-REBECCA

====================================================================================================================================================================

http://10.10.219.99/diningRoom/the_great_shield_key.html
shield_key{48a7a9227cd7eb89f0a062590798cbac}


we got another key.
-==================================================
now let's all old places.
====================================================================================================================================================================

http://10.10.219.99/armorRoom/
Armor room

Jill saw a total 8 armor stands on the right and left of the room
Jill examine the armor one by one and found a note hidden inside one of it
Read the note? READ

==================================================================================
in inpect element note.txt

====================================================================================================================================================================
http://10.10.219.99/armorRoom547845982c18936a25a9b37096b21fc1/note.txt

crest 3:
MDAxMTAxMTAgMDAxMTAwMTEgMDAxMDAwMDAgMDAxMTAwMTEgMDAxMTAwMTEgMDAxMDAwMDAgMDAxMTAxMDAgMDExMDAxMDAgMDAxMDAwMDAgMDAxMTAwMTEgMDAxMTAxMTAgMDAxMDAwMDAgMDAxMTAxMDAgMDAxMTEwMDEgMDAxMDAwMDAgMDAxMTAxMDAgMDAxMTEwMDAgMDAxMDAwMDAgMDAxMTAxMTAgMDExMDAwMTEgMDAxMDAwMDAgMDAxMTAxMTEgMDAxMTAxMTAgMDAxMDAwMDAgMDAxMTAxMTAgMDAxMTAxMDAgMDAxMDAwMDAgMDAxMTAxMDEgMDAxMTAxMTAgMDAxMDAwMDAgMDAxMTAwMTEgMDAxMTEwMDEgMDAxMDAwMDAgMDAxMTAxMTAgMDExMDAwMDEgMDAxMDAwMDAgMDAxMTAxMDEgMDAxMTEwMDEgMDAxMDAwMDAgMDAxMTAxMDEgMDAxMTAxMTEgMDAxMDAwMDAgMDAxMTAwMTEgMDAxMTAxMDEgMDAxMDAwMDAgMDAxMTAwMTEgMDAxMTAwMDAgMDAxMDAwMDAgMDAxMTAxMDEgMDAxMTEwMDAgMDAxMDAwMDAgMDAxMTAwMTEgMDAxMTAwMTAgMDAxMDAwMDAgMDAxMTAxMTAgMDAxMTEwMDA=
Hint 1: Crest 3 has been encoded three times
Hint 2: Crest 3 contanis 19 letters
Note: You need to collect all 4 crests, combine and decode to reavel another path
The combination should be crest 1 + crest 2 + crest 3 + crest 4. Also, the combination is a type of encoded base and you need to decode it
=================================================================

when decode crest3 with base64 then binory then hex we got...
c3M6IHlvdV9jYW50X2h

====================================================================================================================================================================
http://10.10.219.99/attic/

Attic

After Jill reached the attic, she was instanly attacked by a giant snake
Jill fired at least 10 shotgun shell before the snake retreat
She found another body lying on the ground which belongs to Richard, another STARS bravo member.
In additional, there is a note inside the pocket of the body
Read the note? READ 

================================================================================
when we inpect element we got 

note.txt file.


====================================================================================================================================================================

http://10.10.219.99/attic909447f184afdfb352af8b8a25ffff1d/
crest 4:
gSUERauVpvKzRpyPpuYz66JDmRTbJubaoArM6CAQsnVwte6zF9J4GGYyun3k5qM9ma4s
Hint 1: Crest 2 has been encoded twice
Hint 2: Crest 2 contanis 17 characters
Note: You need to collect all 4 crests, combine and decode to reavel another path
The combination should be crest 1 + crest 2 + crest 3 + crest 4. Also, the combination is a type of encoded base and you need to decode it
=======================================================================

when we decode crest4 with base58 then hex we got 

pZGVfZm9yZXZlcg==


====================================================================================================================================================================
http://10.10.219.99/barRoom357162e3db904857963e6e0b64b96ba7/emblem_slot.php
emblem{fec832623ea498e20bf4fe1821d58727}

with emblem we got rebecca key.


====================================================================================================================================================================
http://10.10.219.99/tigerStatusRoom/gem.php

with blue_jewel key we got crest1
```
crest 1:
S0pXRkVVS0pKQkxIVVdTWUpFM0VTUlk9
Hint 1: Crest 1 has been encoded twice
Hint 2: Crest 1 contanis 14 letters
Note: You need to collect all 4 crests, combine and decode to reavel another path
The combination should be crest 1 + crest 2 + crest 3 + crest 4. Also, the combination is a type of encoded base and you need to decode it

```

==================================================================

when we decode crest1 with base64 then base32 we got :-

RlRQIHVzZXI6IG

====================================================================================================================================================================

now we got all the pieces now so let's add them to see what happens....

crest1:- RlRQIHVzZXI6IG
crest2:- h1bnRlciwgRlRQIHBh
crest3:- c3M6IHlvdV9jYW50X2h
crest4:- pZGVfZm9yZXZlcg==

RlRQIHVzZXI6IGh1bnRlciwgRlRQIHBhc3M6IHlvdV9jYW50X2hpZGVfZm9yZXZlcg==

==========================================================

after decoding crest with base64 we got ftp creds.

FTP user: hunter, FTP pass: you_cant_hide_forever
====================================================================================================================================================================

FTP user: hunter
FTP pass: you_cant_hide_forever

====================================================================================================================================================================
FTP :------------------------


got 5 files.
================================================================================

### important.txt
```
Jill,

I think the helmet key is inside the text file, but I have no clue on decrypting stuff. Also, I come across a /hidden_closet/ door but it was locked.

From,
Barry
```
================================================================================

after decompressing 003-key.jpg 
we got 03-key.txt.

3aXRoX3Zqb2x0


====================================================================================================================================================================

in comment of 002-key.jpg we got 

5fYmVfZGVzdHJveV9

====================================================================================================================================================================

with steg cracker with we got 

cGxhbnQ0Ml9jYW

====================================================================================================================================================================

by adding whole key we get
:- cGxhbnQ0Ml9jYW5fYmVfZGVzdHJveV93aXRoX3Zqb2x0

decoding with base64 wwe got:-

plant42_can_be_destroy_with_vjolt

====================================================================================================================================================================

helmet_key{458493193501d2b94bbab2e727f8db4b}


====================================================================================================================================================================
from impotant.txt in ftp
http://10.10.219.99/hidden_closet/
Closet room entrance

Look like the door has been locked
A helmet symbol is embedded on the door 
========================================================================
when we inspect element we got unlock_door.php
and enter helmet key.
====================================================================================================================================================================
http://10.10.219.99/hiddenCloset8997e740cb7f5cece994381b9477ec38/
Closet room
The closet room lead to an underground cave
In the cave, Jill met injured Enrico, the leader of the STARS Bravo team. He mentioned there is a traitor among the STARTS Alpha team.
When he was about to tell the traitor name, suddenly, a gun shot can be heard and Enrico was shot dead.
Jill somehow cannot figure out who did that. Also, Jill found a MO disk 1 and a wolf Medal
Read the MO disk 1? READ
Examine the wolf medal? EXAMINE
================================================================================
in inpect element we got 2 file
MO_DISK1.txt   &     wolf_medal.txt

1.  wolf_medal.txt
view-source:http://10.10.219.99/hiddenCloset8997e740cb7f5cece994381b9477ec38/wolf_medal.txt
```
SSH password: T_virus_rules
```


2.   MO_DISK1.txt
view-source:http://10.10.219.99/hiddenCloset8997e740cb7f5cece994381b9477ec38/MO_DISK1.txt
```
wpbwbxr wpkzg pltwnhro, txrks_xfqsxrd_bvv_fy_rvmexa_ajk
```
====================================================================================================================================================================

http://10.10.219.99/studyRoom/unlock_door.php

with helmet key we reach into room.


====================================================================================================================================================================
http://10.10.219.99/studyRoom28341c5e98c93b89258a6389fd608a3c/

Study room

Jill saw a messy table upon enter the room
After a short search, Jill managed to find a sealed book
Examine the book? EXAMINE
========================================================================
when we inspect we find doom.tar.gz .

====================================================================================================================================================================
when we open tar file we got eagle_medal.txt

SSH user: umbrella_guest

====================================================================================================================================================================

let's login using ssh . and wolf_medal we gonna decode later.
user: umbrella_guest
SSH password: T_virus_rules
====================================================================================================================================================================

after logging i check for user and can read all users files.
in weasker user home.
we got weasker_note.txt

```
Weaker: Finally, you are here, Jill.
Jill: Weasker! stop it, You are destroying the  mankind.
Weasker: Destroying the mankind? How about creating a 'new' mankind. A world, only the strong can survive.
Jill: This is insane.
Weasker: Let me show you the ultimate lifeform, the Tyrant.

(Tyrant jump out and kill Weasker instantly)
(Jill able to stun the tyrant will a few powerful magnum round)

Alarm: Warning! warning! Self-detruct sequence has been activated. All personal, please evacuate immediately. (Repeat)
Jill: Poor bastard

```
========================================================================================================================================================

umbrella_guest@umbrella_corp:~$ cat /home/umbrella_guest/.jailcell/chris.txt
Jill: Chris, is that you?
Chris: Jill, you finally come. I was locked in the Jail cell for a while. It seem that weasker is behind all this.
Jil, What? Weasker? He is the traitor?
Chris: Yes, Jill. Unfortunately, he play us like a damn fiddle.
Jill: Let's get out of here first, I have contact brad for helicopter support.
Chris: Thanks Jill, here, take this MO Disk 2 with you. It look like the key to decipher something.
Jill: Alright, I will deal with him later.
Chris: see ya.

MO disk 2: albert

=========================================================================================================================================================

finally find key for previous MO disk 1.

let's decode.

wpbwbxr wpkzg pltwnhro, txrks_xfqsxrd_bvv_fy_rvmexa_ajk

we got.:- 

weasker login password, stars_members_are_my_guinea_pig

====================================================================================================================================================================

we can run anything root.

weasker@umbrella_corp:/home/umbrella_guest$ sudo cat /root/root.txt
In the state of emergency, Jill, Barry and Chris are reaching the helipad and awaiting for the helicopter support.

Suddenly, the Tyrant jump out from nowhere. After a tough fight, brad, throw a rocket launcher on the helipad. Without thinking twice, Jill pick up the launcher and fire at the Tyrant.

The Tyrant shredded into pieces and the Mansion was blowed. The survivor able to escape with the helicopter and prepare for their next fight.

The End

flag: 3c5794a00dc56c35f2bf096571edf3bf








====================================================================================================================================================================











====================================================================================================================================================================



====================================================================================================================================================================
