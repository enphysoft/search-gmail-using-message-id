# search-gmail-using-message-id
The emacs-lisp function is to search gmail using a Message ID.

While we are sending and receiving so many emails a day, it is almost impossible to organize them by grouping and storing them in different folders. People usually do not make specific enough email subjects and there are many automated emails due to your personal subscription. Even though, some important emails need to be saved in special locations, but sometime one email falls into multiple categories and therefore copying/storing it in multiple folder only gives us confusion.

Now we can use a unique digital information of your emails to quickly find specific ones.  Each email has its own identification, called Message ID, which is similar to your mail address, but very long account name. such as

<806d9c0c-ffe2-7c3b-5775-f0ae1cd2b5da@gmail.com>

In Gmail, you can find your Message ID by clicking an icon of three vertical dots and select "Show original".

In Gmail search window, you can type and enter
rfc822msgid:806d9c0c-ffe2-7c3b-5775-f0ae1cd2b5da@gmail.com

Note that you need to remove brackets "<" and ">", enclosing the Message ID and attach it to "rfc822msgid:" to make 
rfc822msgid:806d9c0c-ffe2-7c3b-5775-f0ae1cd2b5da@hawaii.edu

Copy this to your Gmail search window and you can immediately find the mail that you want to retrieve.

Instead this link also works in much convenient way:
https://mail.google.com/mail/u/0/#search/rfc822msgid%3A806d9c0c-ffe2-7c3b-5775-f0ae1cd2b5da%40hawaii.edu

"https://mail.google.com/mail/u/0/#search/rfc822msgid%3A" note that you have
https://mail.google.com/mail/u/0/#search/
in front of "rfc822msgid:" and ":" is replaced by "%3A".  In addition, "@" symbol in the Message ID is also replaced by "%40".
In summary, this unique link can be made by putting two parts together, i.e.,
https://mail.google.com/mail/u/0/#search/rfc822msgig:806d9c0c-ffe2-7c3b-5775-f0ae1cd2b5da@hawaii.edu
and replace ":" by "%3A" and "@" by "%40".

I believe using a Message ID will significantly shorten the searching time since you will have only one result, and therefore can reduce the server load as well.

My simple Emacs-lisp code automatically generates the gmail link from the Message ID.
I personally use Thunderbird and the latest version has an add-on called "ID copy Message ID", which does that the name indicates. Most email software programs have specific ways to show the Message ID. Not only Emacs, but if you know how to use regular expressions, the converting script is not hard to generate.
