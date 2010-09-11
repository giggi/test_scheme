(define (weekday-name index)
  (let ((day-names (list "日" "月" "火" "水" "木" "金" "土")))
    (if (or (< index 0) (> index 6))
        #f
        (list-ref day-names index))))
