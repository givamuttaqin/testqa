START TRANSACTION;
SELECT ... AS venue_id
    FROM ... JOIN ... ON ...
    FOR UPDATE;
if venue_id > 0 then
    UPDATE ... SET book_id = book_id - 1 WHERE ...;
    say 'reserved'
    COMMIT;
else
    ROLLBACK;
    say 'no venue available'
