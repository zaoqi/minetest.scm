(define (display_chat_message x)
  (apply-lua "minetest.chat_send_all or minetest.display_chat_message"
             x))
(define (after s f)
  (apply-lua "minetest.after" s f))
