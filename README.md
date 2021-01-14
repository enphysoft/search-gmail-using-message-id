# search-gmail-using-message-id
The emacs-lisp function is to search for Gmail using a Message-ID.

## Purpose of the function
While we are sending and receiving so many emails a day, it is almost impossible to organize them by grouping them and storing them in different folders. People usually do not make specific enough email subjects, and there are many automated emails due to your subscription. Some essential emails need to be saved in particular locations, but sometimes one email falls into multiple categories. Therefore, copying/storing it in multiple folders only gives us confusion.

## What is the Message ID and how do you use it?
Now we can use your emails' unique digital information to find specific ones quickly.  Each email has its identification, called Message ID, similar to your mail address, but very long account name, such as

<strong><</strong>`806d9c0c-ffe2-7c3b-5775-f0ae1cd2b5da@gmail.com`<strong>></strong>

### How do you find your Message-ID of a specific Gmail?
In Gmail, you can find your Message ID by clicking an icon of three vertical dots and select "Show original."
![alt text](https://github.com/enphysoft/search-gmail-using-message-id/blob/main/images/Gmail-show-original.png)

### How do you search in Gmail using the Message-ID?
In the Gmail search window, you can type and enter.

`rfc822msgid`<strong>:</strong>`806d9c0c-ffe2-7c3b-5775-f0ae1cd2b5da@gmail.com`

Note that you need to remove brackets <strong><</strong> and <strong>></strong> enclosing the Message-ID and put it after <strong>rfc822msgid:</strong>.
Then, copy this to your Gmail search window as shown below to find the mail you want to retrieve.
 
![alt text](https://github.com/enphysoft/search-gmail-using-message-id/blob/main/images/Gmail-search-using-message-id.png)

## A unique URL of a Message-ID for Gmail
The following link also works in much convenient way:

`https://mail.google.com/mail/u/0/#search/rfc822msgid`<strong>%3A</strong>`806d9c0c-ffe2-7c3b-5775-f0ae1cd2b5da`<strong>%40</strong>`gmail.com`

In `https://mail.google.com/mail/u/0/#search/rfc822msgid`<strong>%3A</strong>, 
note that 
- `https://mail.google.com/mail/u/0/#search/` is placed in front of `rfc822msgid:` after `:` symbol is replaced by `%3A`, and
- `@` symbol in the Message ID is replaced by `%40`.

## Summary
A unique Gmail link can be made by putting two parts together, i.e.,

`https://mail.google.com/mail/u/0/#search/rfc822msgid:` and `806d9c0c-ffe2-7c3b-5775-f0ae1cd2b5da@gmail.com`

and replacing ":" by "%3A" in the link prefix and "@" by "%40" in the Message-ID to finally generate

`https://mail.google.com/mail/u/`<strong>0</strong>`/#search/rfc822msgid`<strong>%3A</strong>`806d9c0c-ffe2-7c3b-5775-f0ae1cd2b5da`<strong>%40</strong>`gmail.com`

Note that "<strong>0</strong>" in '.../mail/u/<strong>0</strong>/#search/...' means your primary gmail account.  If you have multiple gmail acount, the <strong>second</strong> and the <strong>third</strong> accounts are specified using '.../mail/u/<strong>1</strong>/#search/...' and '.../mail/u/<strong>2</strong>/#search/...' , respectively. 

# Conclusion 
Using a Message-ID will significantly shorten the searching time since you will have only one result, reducing the server load. My simple Emacs-lisp code automatically generates the Gmail link from the Message-ID. I use Thunderbird, and the latest version has an add-on called "ID copy Message-ID," which the name indicates. Most email software programs have specific ways to show the Message-ID. Emacs, but if you know how to use regular expressions, the converting script is not hard to generate.

Enjoy saving time. 
 
 
