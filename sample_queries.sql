-- List all books by a specific author
SELECT b.title, a.first_name, a.last_name
FROM book b
JOIN book_author ba ON b.book_id = ba.book_id
JOIN author a ON ba.author_id = a.author_id
WHERE a.last_name = 'Smith';

-- Orders with total value
SELECT o.order_id, SUM(ol.quantity * ol.price) AS total_value
FROM cust_order o
JOIN order_line ol ON o.order_id = ol.order_id
GROUP BY o.order_id;
