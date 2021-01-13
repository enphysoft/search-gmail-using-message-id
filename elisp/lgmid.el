;; 
(defun lookup-gmail-message-id.search ()
  "Description: to look up the message-id (input string) in Gmail search. 
Example: select the message id as a string e.g., <002001d6e826$d55ad770$80108650$@ocean-thermal.org>
and run 'lgmid' after M-x. [2021JAN11T050110].
Albert S. Kim (albertsk@hawaii.edu)
"
  (interactive)
  (let (word) 
    (setq word (if (use-region-p)
                   (buffer-substring-no-properties (region-beginning) (region-end))
                   (current-word)) )
    (setq word (replace-regexp-in-string "<" "" word))
    (setq word (replace-regexp-in-string ">" "" word))
    (setq word (replace-regexp-in-string "@" "%40" word)) 
    (setq word (replace-regexp-in-string " " "" word)) 
    (setq subjectTitle "my Gmail")
    (setq subjectTitle (read-string "Enter your Email submject: "))
    (newline)
    (insert "Message Link:  ")
    (insert "[[")
    (insert    (concat "https://mail.google.com/mail/u/0/#search/rfc822msgid%3A" word))
    (insert "][") 
    (insert subjectTitle)
    (insert "]]")
    (backward-char 2)
))

(defalias 'lgmid 'lookup-gmail-message-id.search)
